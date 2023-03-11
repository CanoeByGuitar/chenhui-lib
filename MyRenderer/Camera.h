//
// Created by 王晨辉 on 2023/3/3.
//

#ifndef CHENHUI_CAMERA_H
#define CHENHUI_CAMERA_H

#include "Ray.h"

class Camera {
public:
    Camera(float focal_length = 1.0f, vec3 origin = vec3(0))
            : origin(origin), focal_length(focal_length) {
        float aspect_ratio = 16.0 / 9.0;
        viewport_height = 2.0;
        viewport_width = aspect_ratio * viewport_height;
        horizontal = unit_vec(vec3(viewport_width, 0, 0));
        vertical = unit_vec(vec3(0, viewport_height, 0));
    }

    Ray getRay(float u, float v) const {
        return Ray(vec3(origin), vec3(0, 0, -focal_length) + u * horizontal + v * vertical);
    }


private:
    vec3 origin;
    vec3 horizontal;
    vec3 vertical;
    float focal_length;
    float viewport_height;
    float viewport_width;



};

#endif //CHENHUI_CAMERA_H
