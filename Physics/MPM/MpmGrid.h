//
// Created by wch on 2023/2/22.
//

#ifndef CHENHUI_MPMGRID_H
#define CHENHUI_MPMGRID_H

#include <Eigen/Core>
#include <Eigen/Dense>

using namespace Eigen;

namespace mpm {
    class Grid {
    public:
        float mass;
        Vector3f vel;
        Vector3f force;
        Vector3i Xi;
    };

    class SandGrid : public Grid{
    public:
        Vector3f vel_bc; // velocity before collision
        Vector3f vel_ac; // velocity after collision
    };
}

#endif //CHENHUI_MPMGRID_H
