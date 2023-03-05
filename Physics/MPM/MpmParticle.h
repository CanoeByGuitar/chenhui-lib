//
// Created by wch on 2023/2/22.
//

#ifndef CHENHUI_MPMPARTICLE_H
#define CHENHUI_MPMPARTICLE_H

#include <Eigen/Core>
#include <Eigen/Dense>
#include "ConstitutionModel.h"

using namespace Eigen;
namespace mpm{
    class Particle{

    public:
        Vector3f pos;
        Vector3f vel;
        Matrix3f F; // deformation gradient
        Matrix3f Bp; // for APIC

        Matrix3f Fe;
        Matrix3f Fp;

        Matrix3f Dp; // inertia tensor


        Material *mtl;
    };
}

#endif //CHENHUI_MPMPARTICLE_H
