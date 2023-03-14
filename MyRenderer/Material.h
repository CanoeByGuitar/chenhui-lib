//
// Created by 王晨辉 on 2023/3/4.
//

#ifndef CHENHUI_MATERIAL_H
#define CHENHUI_MATERIAL_H

#include "Ray.h"
#include "Intersection.h"
#include "Light.h"
#include <vector>
#include "Utils.h"

class Material {
public:
    Material(const vec3 &k_d, const vec3 &k_s, const vec3 &k_a, const vec3 &k_m)
            : k_d(k_d), k_s(k_s), k_a(k_a), k_m(k_m) {}

    Material(const vec3 &k_d, const vec3 &k_s, const vec3 &k_a)
            : k_d(k_d), k_s(k_s), k_a(k_a), k_m(vec3(0)) {}


    vec3 k_d; //diffuse
    vec3 k_s; // specular
    vec3 k_a; // ambient
    vec3 k_m; // mirror reflect

};

class ObjMaterial {
public:
    // 为兼容之前的测试文件 新开一个类
    virtual void AmbientLight(float I_a, vec3 &color) const = 0;
    virtual void SimpleDirectLight(const Ray &in, const Intersection &inter,const Light& light , vec3 &color) const = 0;
    virtual bool SimpleIndirectLight(const Ray &in, const Intersection &inter, Ray &out) const = 0;

    ObjMaterial(vec3 albedo):albedo(albedo){};
    vec3 albedo; // mirror reflect
};


class BlinnPhongMtl : public ObjMaterial {
public:
    BlinnPhongMtl(vec3 k_d, vec3 k_s, vec3 k_a, vec3 albedo, float fade_rate)
    :k_d(k_d), k_s(k_s), k_a(k_a), ObjMaterial(albedo),fade_rate(fade_rate)
    {// Blinn-Phong don't need indirect ray
        albedo = vec3(0);
    }

    void AmbientLight(float I_a, vec3 &color) const override{
        color += k_a * I_a;
    }

    void SimpleDirectLight(const Ray &in, const Intersection &inter,const Light& light, vec3 &color) const override {
        auto p = inter.point;
        auto n = inter.normal;
        auto v = -in.direction();

        // direct light
        auto light_ray = Ray(p, light.pos - p);
        auto l = light_ray.direction();
        auto h = unit_vec(v + l);
        auto I = light.intensity;
        color += k_d * std::max(n * l, 0.f) * I + k_s * I * pow(std::max(0.f, n * h), fade_rate);

    }

    bool SimpleIndirectLight(const Ray &in, const Intersection &inter, Ray &out) const override {
        // indirect light
        auto p = inter.point;
        auto n = inter.normal;
        auto v = -in.direction();
        if(albedo != vec3(0)){
            out = Ray(p, -v + 2 * (n * v) * n);
            return true;
        }
        return false;
    }


public:
    vec3 k_d; //diffuse
    vec3 k_s; // specular
    float fade_rate; // fade rate of specular(pow num)
    vec3 k_a; // ambient

};

class Metal : public ObjMaterial {
public:
    Metal(vec3 k_d, vec3 k_s, vec3 k_a, vec3 albedo, float fade_rate, float fuzz)
    :k_d(k_d), k_s(k_s), k_a(k_a), ObjMaterial(albedo),fade_rate(fade_rate),fuzz(fuzz)
    {}

    Metal(vec3 k_d, vec3 k_s, vec3 k_a, vec3 albedo, float fade_rate)
            :k_d(k_d), k_s(k_s), k_a(k_a), ObjMaterial(albedo),fade_rate(fade_rate),fuzz(0)
    {}

    void AmbientLight(float I_a, vec3 &color) const override{
        color += k_a * I_a;
    }

    void SimpleDirectLight(const Ray &in, const Intersection &inter,const Light& light, vec3 &color) const override {
        auto p = inter.point;
        auto n = inter.normal;
        auto v = -in.direction();

        // direct light
        auto light_ray = Ray(p, light.pos - p);
        auto l = light_ray.direction();
        auto h = unit_vec(v + l);
        auto I = light.intensity;
        color += k_d * std::max(n * l, 0.f) * I + k_s * I * pow(std::max(0.f, n * h), fade_rate);

    }

    bool SimpleIndirectLight(const Ray &in, const Intersection &inter, Ray &out) const override {
        // indirect light
        auto p = inter.point;
        auto n = inter.normal;
        auto v = -in.direction();
        if(albedo != vec3(0)){
            auto q = p + (-v + 2 * (n * v) * n);
            auto diff = fuzz * random_in_unit_sphere();
            out = Ray(p, q + diff - p);
            return true;
        }
        return false;
    }


public:
    vec3 k_d; //diffuse
    vec3 k_s; // specular
    float fade_rate; // fade rate of specular(pow num)
    vec3 k_a; // ambient
    float fuzz;
};
#endif //CHENHUI_MATERIAL_H
