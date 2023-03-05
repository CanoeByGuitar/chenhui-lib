//
// Created by wch on 2023/2/22.
//

#ifndef CHENHUI_MPMSIMULATIONBASE_H
#define CHENHUI_MPMSIMULATIONBASE_H

#include <Eigen/Core>
#include <Eigen/Dense>
#include <memory>
#include "MpmParticle.h"
#include "MpmGrid.h"
#include "ConstitutionModel.h"
#include <vector>
#include "spdlog/spdlog.h"
#include "MpmUtils.h"
using namespace Eigen;

namespace mpm{
    struct SimInfo{
        int particleSize = 0;
        int gridSize = 0;
        int gridW = 0;
        int gridH = 0;
        int gridL = 0;


        float alpha = 0.95f; // 0.95 flip/pic

        Vector3f gravity = Vector3f::Zero();
        Vector3f worldArea = Vector3f::Zero();
        float h = 0.0f;
        int curStep = 0;
    };

    class MpmSimulator{
    public:
        MpmSimulator();
        virtual ~MpmSimulator();
        enum TransferScheme {FLIP99, FLIP95, APIC};

        void Init(const Vector3f &gravity, const Vector3f &worldArea, float h);

        void AddObject(const std::vector<Vector3f> &positions,
                       const std::vector<Vector3f> &velocities,
                       Material *mtl);

        void AddObject(const std::vector<Vector3f> &positions,
                       Material *mtl);

        void SetConstitutionModel(const std::shared_ptr<ConstitutionModel> &cm);

        void SetTransferScheme(TransferScheme ts);

        void Substep(float dt);

        std::vector<Vector3f> GetPosition() const;

        void ClearSimulation();

    private:
        SimInfo simInfo;
        Particle *particles;
        Grid *grids;
        std::shared_ptr<ConstitutionModel> consitutionModel = std::make_shared<NeoHookean_Piola>();
        TransferScheme transferScheme = TransferScheme::APIC;
        std::vector<int> activeNodes;

        void Prestep();
        void P2G();
        void AddGravity();

        void UpdateGridForce();
        void UpdateGridVelocity(float dt);
        void UpdateF(float dt);
        void G2P();
        void Advection(float dt);

        // handle collision
        void SolveGridBoundary(int thickness = 2);

    };
















}
#endif //CHENHUI_MPMSIMULATIONBASE_H
