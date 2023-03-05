//
// Created by wch on 2023/2/22.
//

#include "MpmSimulationBase.h"
namespace mpm{
    MpmSimulator::MpmSimulator(): simInfo() {}

    MpmSimulator::~MpmSimulator() {
        if(particles){
            delete[] particles;
            particles = nullptr;
        }

        if(grids){
            delete[] grids;
            grids = nullptr;
        }
    }

    void MpmSimulator::Init(const Vector3f &gravity, const Vector3f &worldArea, float h) {
        simInfo.h = h;
        simInfo.gravity = gravity;
        simInfo.worldArea = worldArea;

        int W = worldArea[0] / h + 1;
        int H = worldArea[1] / h + 1;
        int L = worldArea[2] / h + 1;

        simInfo.gridW = W;
        simInfo.gridH = H;
        simInfo.gridL = L;
        simInfo.gridSize = W * H * L;
        grids = new Grid[simInfo.gridSize];

        spdlog::info("MPM simulation space info : \n"
                     "\tgrid_size: {}->{}x{}x{}\n"
                     "\tgrid dx: {}\n"
                     "\tgrid gravity: ({},{},{})\n"
                     "\tworld area: ({},{},{})",
                     simInfo.gridSize, W, H, L,simInfo.h,
                     simInfo.gravity[0],simInfo.gravity[1],simInfo.gravity[2],
                     simInfo.worldArea[0],simInfo.worldArea[1],simInfo.worldArea[2]);

        for(int i = 0; i < W; i++){
            for(int j = 0; j < H; j++){
                for(int k = 0; k < L; k++){
                    int index = i * H * L + j * L + k;
                    grids[index].mass = 0;
                    grids[index].force = Vector3f::Zero();
                    grids[index].vel = Vector3f::Zero();
                    grids[index].Xi = Vector3i(i, j, k);
                }
            }
        }


    }

    void MpmSimulator::AddObject(const std::vector<Vector3f> &positions, const std::vector<Vector3f> &velocities,
                                 Material *mtl) {
        assert(positions.size() == velocities.size() && mtl != nullptr);
        auto newSize = simInfo.particleSize + positions.size();

        if(particles){
            Particle *newPaticles = new Particle[newSize];
            memcpy(newPaticles, particles, simInfo.particleSize * sizeof(Particle));
            delete[] particles;
            particles = newPaticles;
        }else{
            particles = new Particle[newSize];
        }

        for(int i = simInfo.particleSize; i < newSize; i++){
            particles[i].pos = positions[i - simInfo.particleSize];
            particles[i].vel = velocities[i - simInfo.particleSize];
            particles[i].F = Matrix3f::Identity();
            particles[i].Fe = Matrix3f::Identity();
            particles[i].Fp = Matrix3f::Identity();
            particles[i].Bp = Matrix3f::Zero();
            particles[i].mtl = mtl;
        }

        simInfo.particleSize = newSize;
    }

    void MpmSimulator::AddObject(const std::vector<Vector3f> &positions, Material *mtl) {
        assert(mtl != nullptr);
        auto newSize = simInfo.particleSize + positions.size();

        if(particles){
            Particle *newPaticles = new Particle[newSize];
            memcpy(newPaticles, particles, simInfo.particleSize * sizeof(Particle));
            delete[] particles;
            particles = newPaticles;
        }else{
            particles = new Particle[newSize];
        }

        for(int i = simInfo.particleSize; i < newSize; i++){
            particles[i].pos = positions[i - simInfo.particleSize];
            particles[i].F = Matrix3f::Identity();
            particles[i].Fe = Matrix3f::Identity();
            particles[i].Fp = Matrix3f::Identity();
            particles[i].Bp = Matrix3f::Zero();
            particles[i].mtl = mtl;
        }

        simInfo.particleSize = newSize;
    }

    void MpmSimulator::SetConstitutionModel(const std::shared_ptr<ConstitutionModel> &cm) {
        consitutionModel = cm;
    }

    void MpmSimulator::SetTransferScheme(MpmSimulator::TransferScheme ts) {
        transferScheme = ts;
        if(ts == TransferScheme::FLIP95){
            simInfo.alpha = 0.95f;
        }else if(ts == TransferScheme::FLIP99){
            simInfo.alpha = 0.99f;
        }
    }

    void MpmSimulator::Substep(float dt) {

    }

    std::vector<Vector3f> MpmSimulator::GetPosition() const {
        return std::vector<Vector3f>();
    }

    void MpmSimulator::ClearSimulation() {

    }

    void MpmSimulator::Prestep() {
        for(int i = 0; i < simInfo.gridSize; i++){
            grids[i].mass = 0;
            grids[i].force = Vector3f::Zero();
            grids[i].vel = Vector3f::Zero();
        }
        activeNodes.resize(0);
    }

    void MpmSimulator::P2G() {

    }

    void MpmSimulator::AddGravity() {
        for(int i = 0; i < activeNodes.size(); i++){
            int index = activeNodes[i];
            grids[index].force += simInfo.gravity * grids[index].mass;
        }
    }

    void MpmSimulator::UpdateGridForce() {
        // update grid forcing from particles F
        for(int iter = 0; iter < simInfo.particleSize; iter++){
            auto F = particles[iter].F;
            auto volP = particles[iter].mtl->volume;
            auto h = simInfo.h;

            Matrix3f piola = consitutionModel->calStressTensor(particles[iter]);

            auto [baseNode, wp, dwp] = quatraticInterpolation(particles[iter].pos / h);

            for(int i = 0; i < 3; i++){
                for(int j = 0; j < 3; j++){
                    for(int k = 0; k < 3; k++){
                        Vector3i curNode = baseNode + Vector3i(i, j, k);
                        Vector3f gradWip {
                            dwp(i, 0) * wp(j, 1) * wp(k, 2) / h,
                            wp(i, 0) * dwp(j, 1) * wp(k, 2) / h,
                            wp(i, 0) * wp(j, 1) * dwp(k, 2) / h
                        };
                        auto index = curNode.x() * simInfo.gridH * simInfo.gridL +
                                curNode.y() * simInfo.gridL + curNode.z();
                        grids[index].force -= volP * (piola * F.transpose()) * gradWip;
                    }
                }
            }
        }
    }

    void MpmSimulator::UpdateGridVelocity(float dt) {
        for(int i = 0; i< activeNodes.size(); i++){
            int index = activeNodes[i];

        }
    }

    void MpmSimulator::UpdateF(float dt) {

    }

    void MpmSimulator::G2P() {

    }

    void MpmSimulator::Advection(float dt) {

    }

    void MpmSimulator::SolveGridBoundary(int thickness) {

    }
}


