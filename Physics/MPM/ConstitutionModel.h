//
// Created by wch on 2023/2/22.
//

#ifndef CHENHUI_CONSTITUTIONMODEL_H
#define CHENHUI_CONSTITUTIONMODEL_H
#include <Eigen/Core>
#include <Eigen/Dense>
#include "MpmParticle.h"


using namespace Eigen;

namespace mpm {
    struct Material{
        float E = 50.0f; // Young's modules
        float nu = 0.3f; // Possion's ratio
        float K;// bulk modulus

        float mass;
        float density;
        float volume;
        // lame's params
        float lambda;
        float mu;

        Material(float E, float nu, float mass, float density);
    };


    class ConstitutionModel{
    public:
        virtual Matrix3f calStressTensor(const Particle &particle) = 0;
        virtual float calcPsi(const Particle &particle) = 0;
    };

    class NeoHookean_Piola : public ConstitutionModel{
        virtual Matrix3f calStressTensor(const Particle &particle);
        virtual float calcPsi(const Particle &particle);
    };

}
#endif //CHENHUI_CONSTITUTIONMODEL_H
