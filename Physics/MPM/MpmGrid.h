//
// Created by wch on 2023/2/22.
//

#ifndef CHENHUI_MPMGRID_H
#define CHENHUI_MPMGRID_H

#include <Eigen/Core>
#include <Eigen/Dense>

using namespace Eigen;

class Grid{
public:
    float mass;
    Vector3f vel;
    Vector3f force;
    Vector3i Xi;
};
#endif //CHENHUI_MPMGRID_H
