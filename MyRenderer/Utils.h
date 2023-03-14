//
// Created by 王晨辉 on 2023/3/10.
//

#ifndef CHENHUI_UTILS_H
#define CHENHUI_UTILS_H

#include <cstdlib>

using namespace std;

inline double random_double() {
    return (rand() / (RAND_MAX + 1.0));
}

inline double random_double(float min, float max) {
    return min + (max - min) * random_double();
}

inline float clamp(float x, float min, float max) {
    if (x > max) x = max;
    if (x < min) x = min;
    return x;
}

inline vec3 clamp(vec3 x, float min, float max) {
    auto a = clamp(x.x(), min, max);
    auto b = clamp(x.y(), min, max);
    auto c = clamp(x.z(), min, max);
    return vec3(a, b, c);
}

vec3 random_in_unit_sphere() {
    while (true) {
        auto p = vec3(random_double(-1, 1),
                      random_double(-1, 1),
                      random_double(-1, 1));
        if (p.norm_squared() >= 1) continue;
        return p;
    }
}

vec3 random_vec(float min, float max) {
    return vec3(random_double(min, max),
                random_double(min, max),
                random_double(min, max));
}


#endif //CHENHUI_UTILS_H
