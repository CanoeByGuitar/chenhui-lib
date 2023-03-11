//
// Created by 王晨辉 on 2023/3/3.
//

#ifndef CHENHUI_GEOMETRY_H
#define CHENHUI_GEOMETRY_H

#include <utility>

#include "Vec3.h"
#include "Ray.h"
#include "Material.h"
#include "spdlog/spdlog.h"
#include <vector>
#include <memory>

struct Bounds {
    vec3 pMin, pMax;

    Bounds() = default;

    Bounds(const vec3 &a, const vec3 &b) : pMin(a), pMax(b) {}
};

class Intersection {
public:
    Intersection() {
        t = 0;
        normal = vec3();
        point = vec3();
        front_face = true;
    }

    float t;
    vec3 normal;
    vec3 point;
    bool front_face;
    Material *m;
};


class Surface {
public:
    Surface(Material *mat) {
        m = mat;
    }


    virtual Bounds getBounds() = 0;

    virtual bool getIntersect(const Ray &r, float t_min, float t_max, Intersection &inter) = 0;

protected:
    Material *m;
};

class Circle : public Surface {
public:
    Circle(Material *mat, const vec3 &c, float r) : Surface(mat), center(c), radius(r) {}

    Bounds getBounds() override {
        return Bounds(center - vec3(radius), center + vec3(radius));
    }

    bool getIntersect(const Ray &ray, float t_min, float t_max, Intersection &inter) override {
        auto e = ray.origin();
        auto d = ray.direction();
        auto c = center;
        auto r = radius;
        float delta = (d * (e - c)) * (d * (e - c)) - (d * d) * ((e - c) * (e - c) - r * r);
        if (delta < 0) return false;
        if (delta >= 0) {
            // for now only consider the cloest t
            auto t = (-d * (e - c) - sqrt(delta)) / (d * d);
            if (t < t_min || t > t_max) return false;
            inter.t = t;
            auto point = e + d * t;
            inter.point = point;
            // 希望normal永远指向ray direction的反方向
            // ray 在物体内部 是表面法向的反向
            // ray 在物体外部 就是表面法向
            auto n = getSurfaceNormal(point);
            if (d * n < 0.f) {
                inter.normal = n;
                inter.front_face = true;
            } else {
                inter.normal = -n;
                inter.front_face = false;
            }
            inter.m = m;
            return true;
        }
//        return false;
    }

    vec3 getSurfaceNormal(const vec3 &point) {
        return unit_vec(point - center);
    }

private:
    vec3 center;
    float radius;
};

class Triangle : public Surface {
public:
    Triangle(Material *mat, const vec3 &a, const vec3 &b, const vec3 &c) : Surface(mat), A(a), B(b), C(c) {}

    Bounds getBounds() override {
        auto pMin = vec3(std::min(std::min(A.x(), B.x()), C.x()),
                         std::min(std::min(A.y(), B.y()), C.y()),
                         std::min(std::min(A.z(), B.z()), C.z()));

        auto pMax = vec3(std::max(std::max(A.x(), B.x()), C.x()),
                         std::max(std::max(A.y(), B.y()), C.y()),
                         std::max(std::max(A.z(), B.z()), C.z()));
        return Bounds(pMin, pMax);
    }

    bool getIntersect(const Ray &ray, float t_min, float t_max, Intersection &inter) override {
        auto e = ray.origin();
        auto d = ray.direction();
        auto AC = A - C;
        auto BC = B - C;
        auto eC = e - C;

        auto M_inv = 1.0f / (cross(AC, BC) * (-d));
        auto t = cross(AC, BC) * eC * M_inv;
        if (t < t_min || t > t_max) return false;
        auto alpha = cross(eC, BC) * (-d) * M_inv;
        if (alpha < 0 || alpha > 1) return false;
        auto beta = cross(AC, eC) * (-d) * M_inv;
        if (beta < 0 || beta > 1 - alpha) return false;
        // TODO: intersection info
        auto point = alpha * A + beta * B + (1 - alpha - beta) * C;
//        spdlog::info("intersection point: ({:.2f},{:.2f},{:.2f})", point.x(), point.y(), point.z());

        return true;

    }

private:
    vec3 A, B, C;
};

class Polygon : public Surface {
    // only convex now
public:
    explicit Polygon(Material *mat, std::vector<vec3> points) : Surface(mat), points(std::move(points)) {
        // test if all points in a face
        if (points.size() < 3) isPolygon = false;
        else {
            auto v1 = points[1] - points[0];
            auto v2 = points[2] - points[1];
            for (int i = 3; i < points.size(); i++) {
                auto v3 = points[i] - points[2];
                // det(v1 v2 v3) > 0 ===> not in a face
                if (abs(cross(v1, v2) * v3) > 1e-6) {
                    isPolygon = false;
                    break;
                }
            }
        }
        isPolygon = true;

    }

    Bounds getBounds() override {

    }


    bool getIntersect(const Ray &ray, float t_min, float t_max, Intersection &inter) override {
        auto e = ray.origin();
        auto d = ray.direction();
        auto n = cross(points[1] - points[0], points[2] - points[1]);

        auto t = (points[0] - e) * n / (d * n);
        if (t < t_min || t > t_max) return false;
        auto p = e + t * d;

        // project to xoy 然后向x正射出一根射线，交点为奇表示在内部
        int cnt = 0;
        points.push_back(points[0]);
        for (int i = 0; i < points.size() - 1; i++) {
            if (onSegment(p, points[i], points[i + 1])) {
                inter.t = t;
                points.pop_back();
                return true;
            }
            vec3 p1, p2;
            if (points[i].y() < points[i + 1].y()) {
                p1 = points[i];
                p2 = points[i + 1];
            } else {
                p1 = points[i + 1];
                p2 = points[i];
            }
            auto v1 = vec3((p2 - p1).x(), (p2 - p1).y(), 0);
            auto v2 = vec3((p - p1).x(), (p - p1).y(), 0);
            if (p.y() < p2.y() && p.y() > p1.y() && (cross(v1, v2).z() > 0)) {
                cnt++;
            }
        }
        points.pop_back();
        return (cnt % 2 == 1);
    }

private:
    bool onSegment(vec3 point, vec3 p1, vec3 p2) {
        // return(共线 && 范围内)
        return (abs((p1 - point) * (p2 - point)) < 1e-6 && abs((p1 - point) * (p2 - point)) <= 0);
    }

public:
    std::vector<vec3> points;
    bool isPolygon;
};

class SurfaceList : public Surface {
public:
    SurfaceList(Material *mat) : Surface(mat) {}

    SurfaceList(Material *mat, std::shared_ptr<Surface> object) : Surface(mat) { add(object); };

    void add(std::shared_ptr<Surface> object) {
        objects.push_back(object);
    }

    void clear() { objects.clear(); };

    Bounds getBounds(){}

    bool getIntersect(const Ray &ray, float t0, float t1, Intersection &inter) override {
        float t = t1;
        Intersection temp_inter;
        bool isIntersected = false;
        for (const auto &obj: objects) {
            if (obj->getIntersect(ray, t0, t, temp_inter)) {
                t = temp_inter.t;
                inter = temp_inter;
                isIntersected = true;
            }
        }
        return isIntersected;
    }

public:
    std::vector<std::shared_ptr<Surface>> objects;
};

#endif //CHENHUI_GEOMETRY_H
