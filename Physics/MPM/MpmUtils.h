//
// Created by wch on 2023/3/4.
//

#ifndef CHENHUI_MPMUTILS_H
#define CHENHUI_MPMUTILS_H

#include <Eigen/Core>
#include <Eigen/Dense>


using namespace Eigen;


inline Vector3f calcQuadratic(float o, float x){
    // +-(o)------------(o+1)--(x)-(o+1.5)--(o+2)-+
    // 或
    // +-(o)----(o+0.5)--(x)-(o+1)----------(o+2)-+
    float d0 = x - o;
    float d1 = d0 - 1;
    float d2 = 1 -d1;

    return {0.5f * (1.5f - d0) * (1.5f - d0), 0.75f - d1 * d1,
            0.5f * (1.5f - d2) * (1.5f - d2)};
}

inline Vector3f calcQuadraticGrad(float o, float x){
    float d0 = x - o;
    float d1 = d0 - 1;
    float d2 = 1 - d1;

    return {d0 - 1.5f, -2 * d1, 1.5f - d2};
}

std::tuple<Vector3i, Matrix3f, Matrix3f> quatraticInterpolation(const Vector3f &pos){
    Vector3i baseNode = floor(pos.array() - 0.5f).cast<int>();
    Matrix3f wp, dwp;
    wp << calcQuadratic(baseNode[0], pos[0]),
            calcQuadratic(baseNode[1], pos[1]),
            calcQuadratic(baseNode[2], pos[2]);

    dwp << calcQuadraticGrad(baseNode[0], pos[0]),
            calcQuadraticGrad(baseNode[1], pos[1]),
            calcQuadraticGrad(baseNode[2], pos[2]);

    return {baseNode, wp, dwp};
}

#endif //CHENHUI_MPMUTILS_H
