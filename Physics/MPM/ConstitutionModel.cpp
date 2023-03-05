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




}