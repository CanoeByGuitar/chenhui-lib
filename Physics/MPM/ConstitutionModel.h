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
    class Particle;
    class SandParticle;
    class ConstitutionModel{
    public:
        virtual Matrix3f calStressTensor(const Particle &particle) = 0;
        virtual float calcPsi(const Particle &particle) = 0;
    };

    class NeoHookean_Piola : public ConstitutionModel{
        Matrix3f calStressTensor(const Particle &particle) override;
        float calcPsi(const Particle &particle) override;
    };

//    class QuatraticVolumePenalty : public ConstitutionModel{
//        Matrix3f calStressTensor(const Particle &particle) override;
//        float calcPsi(const Particle &particle) override;
//    };

    class NeoHookean_Fluid : public ConstitutionModel{
        Matrix3f calStressTensor(const Particle &particle) override;
        float calcPsi(const Particle &particle) override;
    };

    class CDMPM_Fluid : public ConstitutionModel{
        Matrix3f calStressTensor(const Particle &particle) override;
        float calcPsi(const Particle &particle) override;
    };

    class DruckerPrager : public ConstitutionModel{
        Matrix3f calStressTensor(const Particle &particle) override;
        float calcPsi(const Particle &particle) override;
    };

    enum TransferScheme {FLIP99, FLIP95, APIC};
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
        ConstitutionModel *cm;

        TransferScheme transferScheme;
        Material(float E, float nu, float mass, float density, ConstitutionModel *cm, TransferScheme ts);
    };
}
#endif //CHENHUI_CONSTITUTIONMODEL_H
