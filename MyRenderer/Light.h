//
// Created by 王晨辉 on 2023/3/12.
//

#ifndef CHENHUI_LIGHT_H
#define CHENHUI_LIGHT_H

#include "Vec3.h"

// light
class Light {
public:
    vec3 pos;
    float intensity;
    Light(const vec3 &pos, float i) : pos(pos), intensity(i) {}
};


#endif //CHENHUI_LIGHT_H
