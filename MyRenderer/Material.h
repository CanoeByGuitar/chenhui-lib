//
// Created by 王晨辉 on 2023/3/4.
//

#ifndef CHENHUI_MATERIAL_H
#define CHENHUI_MATERIAL_H

class Material{
public:
    Material(const vec3 &k_d, const vec3 &k_s, const vec3 &k_a)
    :k_d(k_d), k_s(k_s), k_a(k_a)
    {}


    vec3 k_d;
    vec3 k_s;
    vec3 k_a;

};

#endif //CHENHUI_MATERIAL_H
