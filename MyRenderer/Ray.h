//
// Created by 王晨辉 on 2023/3/3.
//

#ifndef CHENHUI_RAY_H
#define CHENHUI_RAY_H

#include "Vec3.h"

class Ray{
public:
    Ray(){}
    Ray(const vec3 &o, const vec3 &d):orig(o),dir(unit_vec(d)){};

    vec3 at(float t){
        return orig + t * dir;
    }

    vec3 origin() const{
        return orig;
    }

    vec3 direction() const{
        return dir;
    }

private:
    vec3 orig;
    vec3 dir;
};

#endif //CHENHUI_RAY_H
