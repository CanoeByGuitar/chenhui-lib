//
// Created by wch on 2023/2/22.
//

#include "ConstitutionModel.h"
#include <iostream>
#include "MpmUtils.h"

namespace mpm{
    Material::Material(float E, float nu, float mass, float density, ConstitutionModel *cm, TransferScheme ts)
    :E(E), nu(nu), mass(mass), density(density), cm(cm), transferScheme(ts){
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

    Matrix3f DruckerPrager::calStressTensor(const Particle &particle) {
        auto sand = static_cast<SandParticle&>(const_cast<Particle&>(particle));
        auto F = sand.Fe;
        JacobiSVD<Matrix3f> svd(F, ComputeFullU | ComputeFullV);
        auto U = svd.matrixV();
        Matrix3f Sigma = svd.singularValues().asDiagonal();
        MPM_ASSERT((Sigma(0, 0) != 0 && Sigma(1, 1) != 0 || Sigma(2, 2) != 0), "Sigma error");
        auto V = svd.matrixV();
        auto mu = sand.mtl->mu;
        auto lambda = sand.mtl->lambda;
        auto inv = Sigma.inverse();
        auto log_sigma = diagLog(Sigma);
        Matrix3f piola = U * (2 * mu * inv *  +
                          lambda * log_sigma.trace() * inv) * V.transpose();
//        MPM_ASSERT(abs(piola.norm()) < 100, "Piola error");
        return piola;
    }
    float DruckerPrager::calcPsi(const Particle &particle) {
        auto sand = static_cast<SandParticle&>(const_cast<Particle&>(particle));
        auto F = sand.Fe;
        JacobiSVD<Matrix3f> svd(F, ComputeFullU | ComputeFullV);
        auto U = svd.matrixV();
        Matrix3f Sigma = svd.singularValues().asDiagonal();
        auto V = svd.matrixV();

        auto mu = particle.mtl->mu;
        auto lambda = particle.mtl->lambda;
        auto temp = diagLog(Sigma);
        float psi = mu * (temp * temp).trace() + 0.5 * lambda * temp.trace() * temp.trace();
        return psi;
    }
}