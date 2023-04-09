//
// Created by wch on 2023/4/1.
//

#ifndef CHENHUI_SANDMPMSIMULATION_H
#define CHENHUI_SANDMPMSIMULATION_H

#include "MpmSimulationBase.h"
namespace mpm{
    class SandMpm : public MpmSimulatorBase{
    public:
        SandMpm();
        virtual ~SandMpm();
        void Init(const Vector3f &gravity, const Vector3f &worldArea, float h) override;
        void AddObject(const std::vector<Vector3f> &positions,
                       const std::vector<Vector3f> &velocities,
                       Material *mtl, int id) override;
        void AddObject(const std::vector<Vector3f> &positions,
                       Material *mtl, int id) override;
        void AddObject(const std::vector<Vector3f> &positions,
                       Material *mtl, Vector3f transform, int id) override;
        virtual void Substep(float dt) override;
        std::vector<Vector3f> GetPosition() const override;
        std::vector<int> GetObjID() const override;
        std::vector<float> GetPositionToRenderer() const override;
        std::vector<float> GetPositionWithIdToRenderer() const override;
        void ClearSimulation() override;

    protected:
        SimInfo simInfo;
        SandParticle *particles;
        SandGrid *grids;
        tbb::spin_mutex *gridMutexs;
        tbb::concurrent_vector<int> activeNodes;
        void Prestep() override;
        void P2G() override;
        void AddGravity() override;
        void UpdateGridForce() override;
        void UpdateGridVelocity(float dt) override;
        void UpdateF(float dt) override;
        void G2P() override;
        void Advection(float dt) override;
        void SolveGridBoundary(int thickness = 2) override;
        void SolveFriction();
        void SolvePlastic();
        std::pair<Matrix3f, float> Project(const Matrix3f&, float, float, float);
    };

}


#endif//CHENHUI_SANDMPMSIMULATION_H
