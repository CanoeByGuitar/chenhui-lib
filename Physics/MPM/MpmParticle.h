//
// Created by wch on 2023/2/22.
//

#ifndef CHENHUI_MPMPARTICLE_H
#define CHENHUI_MPMPARTICLE_H

#include <Eigen/Core>
#include <Eigen/Dense>
#include "ConstitutionModel.h"

using namespace Eigen;
namespace mpm {

    class Material;
    class Particle {
    public:
        Vector3f pos;
        Vector3f vel;
        Matrix3f F; // deformation gradient
        Matrix3f Bp; // for APIC

        Matrix3f Dp; // inertia tensor
        Material *mtl;
        int id;
    };

    class SandParticle : public Particle{
    public:
        Matrix3f Fe;
        Matrix3f Fp;
        float sand_alpha; // yield surface size
        float sand_q; // hardening state
    };
}

#endif //CHENHUI_MPMPARTICLE_H
