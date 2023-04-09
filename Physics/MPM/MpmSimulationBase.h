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
#include <tbb/spin_mutex.h>
#include <tbb/concurrent_vector.h>

using namespace Eigen;

#define using_tbb 1

namespace mpm{
    struct SimInfo{
        int particleSize = 0 ;
        int gridSize  = 0;
        int gridW  = 0;
        int gridH  = 0;
        int gridL  = 0;

        float alpha = 0.95f; // 0.95 flip/pic

        Vector3f gravity = Vector3f::Zero();
        Vector3f worldArea = Vector3f::Zero();
        float h = 0.0f;
        int curStep  ;
        float friction_mu= 0.5;

        ////// sand
        float h0, h1, h2, h3;
    };

    class MpmSimulatorBase{
    public:
        MpmSimulatorBase();
        virtual ~MpmSimulatorBase();
        virtual void Init(const Vector3f &gravity, const Vector3f &worldArea, float h)  ;
        virtual void AddObject(const std::vector<Vector3f> &positions,
                       const std::vector<Vector3f> &velocities,
                       Material *mtl, int id)  ;
        virtual void AddObject(const std::vector<Vector3f> &positions,
                       Material *mtl, int id)  ;
        virtual  void AddObject(const std::vector<Vector3f> &positions,
                       Material *mtl, Vector3f transform, int id)  ;
        virtual void Substep(float dt)  ;
        virtual std::vector<Vector3f> GetPosition() const  ;
        virtual std::vector<int> GetObjID() const  ;
        virtual std::vector<float> GetPositionToRenderer() const  ;
        virtual std::vector<float> GetPositionWithIdToRenderer() const  ;
        virtual void ClearSimulation()  ;

    protected:
        virtual void Prestep()  ;
        virtual void P2G()  ;
        virtual void AddGravity()  ;

        virtual void UpdateGridForce()  ;
        virtual void UpdateGridVelocity(float dt)  ;
        virtual void UpdateF(float dt)  ;
        virtual void G2P()  ;
        virtual void Advection(float dt)  ;
        virtual void SolveGridBoundary(int thickness)  ;
    };


}
#endif //CHENHUI_MPMSIMULATIONBASE_H
