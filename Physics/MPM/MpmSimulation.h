//
// Created by wch on 2023/4/8.
//

#ifndef CHENHUI_MPMSIMULATION_H
#define CHENHUI_MPMSIMULATION_H
#include "MpmSimulationBase.h"

namespace mpm{
    class MpmSimulator : public MpmSimulatorBase{
    public:
        MpmSimulator();
        virtual ~MpmSimulator();


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
        Particle *particles;
        Grid *grids;
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
    };
}



#endif//CHENHUI_MPMSIMULATION_H
