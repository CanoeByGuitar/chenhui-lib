//
// Created by 王晨辉 on 2023/3/12.
//

#ifndef CHENHUI_INTERSECTION_H
#define CHENHUI_INTERSECTION_H

class Material;
class ObjMaterial;
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
    std::shared_ptr<ObjMaterial> mtl;
};

#endif //CHENHUI_INTERSECTION_H
