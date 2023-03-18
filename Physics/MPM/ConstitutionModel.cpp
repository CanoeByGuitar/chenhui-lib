//
// Created by wch on 2023/2/22.
//

#include "ConstitutionModel.h"

namespace mpm{
    Material::Material(float E, float nu, float mass, float density)
    :E(E), nu(nu), mass(mass), density(density){
        mu = 0.5f * E / (1 + nu);
        lambda = E * nu / (( 1 + nu) * ( 1 - 2 * nu));
        volume = mass / density;
        K = E / (3 * (1 - nu ));
    }

    float NeoHookean_Piola::calcPsi(const Particle &particle) {
        auto mu = particle.mtl->mu;
        auto lambda = particle.mtl->lambda;
        auto F = particle.F;
        auto J = F.determinant();
        auto log_J = log(J);
        return 0.5 * mu * ((F.transpose() * F).trace() - 3)
                - mu * log_J + 0.5 * lambda * log_J * log_J;
    }

    Matrix3f NeoHookean_Piola::calStressTensor(const Particle &particle) {
        auto mu = particle.mtl->mu;
        auto lambda = particle.mtl->lambda;
        auto F = particle.F;
        auto J = F.determinant();
        auto log_J = log(J);
        return mu * (F - F.transpose().inverse()) + lambda * log_J * F.transpose().inverse();
    }


    Matrix3f NeoHookean_Fluid::calStressTensor(const Particle &particle) {
        auto m = particle.mtl;
        auto F = particle.F;
        auto J = F.determinant();
        auto piola = m->lambda * log(J) * F.transpose().inverse();
        return piola;
    }

    float NeoHookean_Fluid::calcPsi(const Particle &particle) {
        auto m = particle.mtl;
        auto F = particle.F;
        auto J = F.determinant();
        auto log_J = log(J);

        auto psi = 0.5f * m->mu * ((F.transpose() * F).trace() - 3) - m->mu * log_J +
                   0.5f * m->lambda * log_J * log_J;
        return psi;
    }

    Matrix3f CDMPM_Fluid::calStressTensor(const Particle &particle) {
        auto m = particle.mtl;
        auto F = particle.F;
        auto J = F.determinant();
        // d(psi)/d(J) * d(J)/d(F) =
        // 0.5 * K (J - 1 / J) * J * F^{-T}
        auto piola = 0.5f * m->K * (J - 1 / J) * J * F.inverse().transpose();
        return piola;
    }

    float CDMPM_Fluid::calcPsi(const Particle &particle) {
        auto m = particle.mtl;
        auto F = particle.F;
        auto J = F.determinant();
        auto log_J = log(J);
        // 0.5 * K ( 0.5 * (J^2 - 1) - Log(J))
        auto psi = 0.5f * m->K * (0.5f * (J * J - 1) - log_J);
        return psi;
    }
}