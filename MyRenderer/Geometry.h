//
// Created by 王晨辉 on 2023/3/3.
//

#ifndef CHENHUI_GEOMETRY_H
#define CHENHUI_GEOMETRY_H

#include "Vec3.h"
#include "Ray.h"
#include "Material.h"
#include "spdlog/spdlog.h"

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
    }

    float t;
    vec3 normal;
};

class Geometry {
public:
    virtual Bounds getBounds() = 0;

    virtual bool getIntersect(const Ray &r, Intersection &inter) = 0;
};

class Surface : Geometry {
public:
    Surface() {
        m = new Material();
    }

private:
    Material *m;
};

class Circle : Surface {
public:
    Circle(const vec3 &c, float r) : center(c), radius(r) {}

    Bounds getBounds() {
        return Bounds(center - vec3(radius), center + vec3(radius));
    }

    bool getIntersect(const Ray &ray, Intersection &inter) override {
        auto e = ray.origin();
        auto d = ray.direction();
        auto c = center;
        auto r = radius;
        float delta = (d * (e - c)) * (d * (e - c)) - (d * d) * ((e - c) * (e - c) - r * r);
        if (delta < 0) return false;
        if (delta >= 0) {
            // TODO: intersect info
            return true;
        }
    }

private:
    vec3 center;
    float radius;
};

class Triangle : Surface {
public:
    Triangle(const vec3 &a, const vec3 &b, const vec3 &c) : A(a), B(b), C(c) {}

    Bounds getBounds() {
        auto pMin = vec3(std::min(std::min(A.x(), B.x()), C.x()),
                         std::min(std::min(A.y(), B.y()), C.y()),
                         std::min(std::min(A.z(), B.z()), C.z()));

        auto pMax = vec3(std::max(std::max(A.x(), B.x()), C.x()),
                         std::max(std::max(A.y(), B.y()), C.y()),
                         std::max(std::max(A.z(), B.z()), C.z()));
        return Bounds(pMin, pMax);
    }

    bool getIntersect(const Ray &ray, Intersection &inter) override {
        auto e = ray.origin();
        auto d = ray.direction();
        auto AC = A - C;
        auto BC = B - C;
        auto eC = e - C;

        auto M_inv = 1.0f / (cross(AC, BC) * (-d));
        auto t = cross(AC, BC) * eC * M_inv;
        if(t < 0) return false;
        auto alpha = cross(eC, BC) * (-d) * M_inv;
        if(alpha < 0 || alpha > 1) return false;
        auto beta = cross(AC, eC) * (-d) * M_inv;
        if(beta < 0 || beta > 1 - alpha) return false;
        // TODO: intersection info
        auto point = alpha * A + beta * B + (1 - alpha - beta) * C;
//        spdlog::info("intersection point: ({:.2f},{:.2f},{:.2f})", point.x(), point.y(), point.z());

        return true;

    }

private:
    vec3 A, B, C;
};


#endif //CHENHUI_GEOMETRY_H
