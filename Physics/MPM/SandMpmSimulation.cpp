//
// Created by wch on 2023/4/1.
//

#include "SandMpmSimulation.h"

namespace mpm {
    SandMpm::SandMpm() : simInfo() {}

    SandMpm::~SandMpm() {
        if (particles) {
            delete[] particles;
            particles = nullptr;
        }

        if (grids) {
            delete[] grids;
            grids = nullptr;
        }

        if (gridMutexs) {
            delete[] gridMutexs;
            gridMutexs = nullptr;
        }
    }

    void SandMpm::Init(const Vector3f &gravity, const Vector3f &worldArea, float h) {
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
        grids = new SandGrid[simInfo.gridSize];
        gridMutexs = new tbb::spin_mutex[simInfo.gridSize];

        ///// sand
        // TODO: change sande to derived class
        simInfo.h0 = 70;
        simInfo.h1 = 9;
        simInfo.h2 = 0.2;
        simInfo.h3 = 10;
        simInfo.friction_mu = 0.8;

        spdlog::info("MPM simulation space info : \n"
                     "\tgrid_size: {}->{}x{}x{}\n"
                     "\tgrid dx: {}\n"
                     "\tgrid gravity: ({},{},{})\n"
                     "\tworld area: ({},{},{})",
                     simInfo.gridSize, W, H, L, simInfo.h,
                     simInfo.gravity[0], simInfo.gravity[1], simInfo.gravity[2],
                     simInfo.worldArea[0], simInfo.worldArea[1], simInfo.worldArea[2]);

        for (int i = 0; i < W; i++) {
            for (int j = 0; j < H; j++) {
                for (int k = 0; k < L; k++) {
                    int index = i * H * L + j * L + k;
                    grids[index].mass = 0;
                    grids[index].force = Vector3f::Zero();
                    grids[index].vel = Vector3f::Zero();
                    grids[index].vel = Vector3f::Zero();
                    grids[index].Xi = Vector3i(i, j, k);
                }
            }
        }
    }

    void SandMpm::AddObject(const std::vector<Vector3f> &positions, const std::vector<Vector3f> &velocities,
                            Material *mtl, int id) {
        assert(positions.size() == velocities.size() && mtl != nullptr);
        auto newSize = simInfo.particleSize + positions.size();

        if (particles) {
            SandParticle *newPaticles = new SandParticle[newSize];
            memcpy(newPaticles, particles, simInfo.particleSize * sizeof(Particle));
            delete[] particles;
            particles = newPaticles;
        } else {
            particles = new SandParticle[newSize];
        }

        for (int i = simInfo.particleSize; i < newSize; i++) {
            particles[i].pos = positions[i - simInfo.particleSize];
            particles[i].vel = velocities[i - simInfo.particleSize];
            particles[i].F = Matrix3f::Identity();
            particles[i].Bp = Matrix3f::Zero();
            particles[i].mtl = mtl;
            particles[i].id = id;
            particles[i].Fe = Matrix3f::Identity();
            particles[i].Fp = Matrix3f::Identity();
        }

        simInfo.particleSize = newSize;
    }

    void SandMpm::AddObject(const std::vector<Vector3f> &positions, Material *mtl, Vector3f transform, int id) {
        assert(mtl != nullptr);
        auto newSize = simInfo.particleSize + positions.size();

        if (particles) {
            SandParticle *newPaticles = new SandParticle[newSize];
            memcpy(newPaticles, particles, simInfo.particleSize * sizeof(Particle));
            delete[] particles;
            particles = newPaticles;
        } else {
            particles = new SandParticle[newSize];
        }

        for (int i = simInfo.particleSize; i < newSize; i++) {
            particles[i].pos = positions[i - simInfo.particleSize] + transform;
            particles[i].F = Matrix3f::Identity();
            particles[i].Bp = Matrix3f::Zero();
            particles[i].mtl = mtl;
            particles[i].id = id;
            particles[i].Fe = Matrix3f::Identity();
            particles[i].Fp = Matrix3f::Identity();
        }

        simInfo.particleSize = newSize;
    }

    void SandMpm::AddObject(const std::vector<Vector3f> &positions, Material *mtl, int id) {
        assert(mtl != nullptr);
        auto newSize = simInfo.particleSize + positions.size();

        if (particles) {
            SandParticle *newPaticles = new SandParticle[newSize];
            memcpy(newPaticles, particles, simInfo.particleSize * sizeof(Particle));
            delete[] particles;
            particles = newPaticles;
        } else {
            particles = new SandParticle[newSize];
        }

        for (int i = simInfo.particleSize; i < newSize; i++) {
            particles[i].pos = positions[i - simInfo.particleSize];
            particles[i].F = Matrix3f::Identity();
            particles[i].Bp = Matrix3f::Zero();
            particles[i].mtl = mtl;
            particles[i].id = id;
            particles[i].Fe = Matrix3f::Identity();
            particles[i].Fp = Matrix3f::Identity();
        }

        simInfo.particleSize = newSize;
    }


    std::vector<int> SandMpm::GetObjID() const {
        std::vector<int> ids(simInfo.particleSize);
#if using_tbb == 1
        tbb::parallel_for(0, simInfo.particleSize, [&](int i) {
            ids[i] = particles[i].id;
        });
#else
        for (int i = 0; i < simInfo.particleSize; i++) {
            ids[i] = particles[i].id;
        }
#endif
        return ids;
    }


    std::vector<Vector3f> SandMpm::GetPosition() const {
        std::vector<Vector3f> positions(simInfo.particleSize);
#if using_tbb == 1
        tbb::parallel_for(0, simInfo.particleSize, [&](int i) {
            positions[i] = particles[i].pos;
        });
#else
        for (int i = 0; i < simInfo.particleSize; i++) {
            positions[i] = particles[i].pos;
        }
#endif
        return positions;
    }

    std::vector<float> SandMpm::GetPositionToRenderer() const {
        std::vector<float> positions(simInfo.particleSize * 3);
#if using_tbb == 1
        tbb::parallel_for(0, simInfo.particleSize, [&](int i) {
            positions[3 * i] = particles[i].pos[0];
            positions[3 * i + 1] = particles[i].pos[1];
            positions[3 * i + 2] = particles[i].pos[2];
        });
#else
        for (int i = 0; i < simInfo.particleSize; i++) {
            positions[3 * i] = particles[i].pos[0];
            positions[3 * i + 1] = particles[i].pos[1];
            positions[3 * i + 2] = particles[i].pos[2];
        }
#endif
        return positions;
    }

    std::vector<float> SandMpm::GetPositionWithIdToRenderer() const {
        std::vector<float> positions(simInfo.particleSize * 4);
        tbb::parallel_for(0, simInfo.particleSize, [&](int i) {
            positions[4 * i] = particles[i].pos[0];
            positions[4 * i + 1] = particles[i].pos[1];
            positions[4 * i + 2] = particles[i].pos[2];
            positions[4 * i + 3] = particles[i].id;
        });
        return positions;
    }


    void SandMpm::ClearSimulation() {
        if (particles) {
            delete[] particles;
            particles = nullptr;
        }

        if (grids) {
            delete[] grids;
            grids = nullptr;
        }

        if (gridMutexs) {
            delete[] gridMutexs;
            gridMutexs = nullptr;
        }
    }

    void SandMpm::Substep(float dt) {
        //TICK(Prestep)
        Prestep();
        //TOCK(Prestep)

        //        TICK(P2G)
        P2G();
        //        TOCK(P2G)


        //TICK(AddGravity)
        AddGravity();
        //TOCK(AddGravity)

        //TICK(UpdateGridForce)
        UpdateGridForce();
        //TOCK(UpdateGridForce)

        //TICK(UpdateGridVelocity)
        UpdateGridVelocity(dt);
        //TOCK(UpdateGridVelocity)

        //TICK(SolveGridBoundary)
        SolveGridBoundary(2);
        //TOCK(SolveGridBoundary)

        SolveFriction();

        //TICK(UpdateF)
        UpdateF(dt);
        //TOCK(UpdateF)

        //TICK(G2P)
        G2P();
        //TOCK(G2P)

        //TICK(Advection)
        Advection(dt);
        //TOCK(Advection)

        SolvePlastic();


        simInfo.curStep++;
    }

    void SandMpm::Prestep() {
#if using_tbb == 1
        tbb::parallel_for(0, simInfo.gridSize, [&](int i) {
            grids[i].mass = 0;
            grids[i].force = Vector3f::Zero();
            grids[i].vel = Vector3f::Zero();
            grids[i].vel_ac = Vector3f::Zero();
            grids[i].vel_bc = Vector3f::Zero();
        });
#else
        for (int i = 0; i < simInfo.gridSize; i++) {
            grids[i].mass = 0;
            grids[i].force = Vector3f::Zero();
            grids[i].vel = Vector3f::Zero();
            grids[i].vel = Vector3f::Zero();
        }
#endif
        activeNodes.resize(0);
    }

    void SandMpm::P2G() {
#if using_tbb == 1
        tbb::parallel_for(0, (int) simInfo.particleSize, [&](int iter) {
            Vector3f gs_particle_pos = particles[iter].pos / simInfo.h;
            auto [base_node, wp, dwp] = quatraticInterpolation(gs_particle_pos);
            auto particle = particles[iter];
            auto mass = particle.mtl->mass;
            for (int i = 0; i < 3; i++) {
                for (int j = 0; j < 3; j++) {
                    for (int k = 0; k < 3; k++) {
                        Vector3i curr_node = base_node + Vector3i(i, j, k);
                        int index = curr_node[0] * simInfo.gridH * simInfo.gridL + curr_node[1] * simInfo.gridL + curr_node[2];

                        // check if particles out of boundaries
                        MPM_ASSERT(0 <= index && index < simInfo.gridSize, " PARTICLE OUT OF GRID at Transfer_P2G");

                        float wijk = wp(i, 0) * wp(j, 1) * wp(k, 2);
                        Vector3f plus = Vector3f::Zero();
                        auto transferScheme = particles[iter].mtl->transferScheme;
                        if (transferScheme == TransferScheme::APIC) {
                            plus = 4 * particles[iter].Bp *
                                   (curr_node.cast<float>() - gs_particle_pos);
                        }

                        // critical: one grid attributes may be modified by other threads if not forbidden
                        {
                            tbb::spin_mutex::scoped_lock lock(gridMutexs[index]);
                            grids[index].vel += wijk * mass * (particles[iter].vel + plus);
                            grids[index].vel_ac = grids[index].vel;
                            grids[index].mass += wijk * mass;
                        }
                    }
                }
            }
        });
        tbb::parallel_for(0, (int) simInfo.gridSize, [&](int iter) {
            if (grids[iter].mass > 1e-6) {
                // critical
                activeNodes.push_back(iter);
                grids[iter].vel = grids[iter].vel / grids[iter].mass;
                grids[iter].vel_ac = grids[iter].vel;
            } else {
                grids[iter].vel = Vector3f::Zero();
                grids[iter].vel_ac = Vector3f::Zero();
            }
        });
#else
        for (int iter = 0; iter < simInfo.particleSize; iter++) {
            Vector3f gs_particle_pos = particles[iter].pos / simInfo.h;
            auto [base_node, wp, dwp] = quatraticInterpolation(gs_particle_pos);
            auto particle = particles[iter];
            auto mass = particle.mtl->mass;
            for (int i = 0; i < 3; i++) {
                for (int j = 0; j < 3; j++) {
                    for (int k = 0; k < 3; k++) {
                        Vector3i curr_node = base_node + Vector3i(i, j, k);
                        int index = curr_node[0] * simInfo.gridH * simInfo.gridL + curr_node[1] * simInfo.gridL + curr_node[2];

                        // check if particles out of boundaries
                        MPM_ASSERT(0 <= index && index < simInfo.gridSize, " PARTICLE OUT OF GRID P2G.  index = (" + std::to_string(curr_node[0] + i) + " " + std::to_string(curr_node[1] + j) + " " + std::to_string(curr_node[2] + k) + ")");

                        float wijk = wp(i, 0) * wp(j, 1) * wp(k, 2);
                        Vector3f plus = Vector3f::Zero();
                        auto transferScheme = particles[iter].mtl->transferScheme;
                        if (transferScheme == TransferScheme::APIC) {
                            plus = 4 * particles[iter].Bp *
                                   (curr_node.cast<float>() - gs_particle_pos);
                        }

                        // grids momentum
                        grids[index].vel += wijk * mass * (particles[iter].vel + plus);
                        grids[index].mass += wijk * mass;
                    }
                }
            }
        }

        for (int iter = 0; iter < simInfo.gridSize; iter++) {
            if (grids[iter].mass > 1e-15) {
                activeNodes.push_back(iter);
                grids[iter].vel = grids[iter].vel / grids[iter].mass;
            } else {
                grids[iter].vel = Vector3f::Zero();
            }
        }
#endif
    }

    void SandMpm::AddGravity() {
#if using_tbb == 1
        tbb::parallel_for(0, (int) activeNodes.size(), [&](int i) {
            int index = activeNodes[i];
            grids[index].force += simInfo.gravity * grids[index].mass;
        });
#else
        for (int i = 0; i < activeNodes.size(); i++) {
            int index = activeNodes[i];
            grids[index].force += simInfo.gravity * grids[index].mass;
        }
#endif
    }

    // update grid forcing from particles F
    void SandMpm::UpdateGridForce() {
#if using_tbb == 1
        tbb::parallel_for(0, (int) simInfo.particleSize, [&](int iter) {
            auto Fe = particles[iter].Fe;
            auto volP = particles[iter].mtl->volume;
            auto consitutionModel = particles[iter].mtl->cm;
            auto h = simInfo.h;

            Matrix3f piola = consitutionModel->calStressTensor(particles[iter]);

            auto [baseNode, wp, dwp] = quatraticInterpolation(particles[iter].pos / h);

            for (int i = 0; i < 3; i++) {
                for (int j = 0; j < 3; j++) {
                    for (int k = 0; k < 3; k++) {
                        Vector3i curNode = baseNode + Vector3i(i, j, k);
                        Vector3f gradWip{
                                dwp(i, 0) * wp(j, 1) * wp(k, 2) / h,
                                wp(i, 0) * dwp(j, 1) * wp(k, 2) / h,
                                wp(i, 0) * wp(j, 1) * dwp(k, 2) / h};
                        auto index = curNode.x() * simInfo.gridH * simInfo.gridL +
                                     curNode.y() * simInfo.gridL + curNode.z();
                        MPM_ASSERT(0 <= index && index < simInfo.gridSize, " PARTICLE OUT OF GRID at UpdateGridForce");
                        // MPM course p43
                        {
                            // critical
                            tbb::spin_mutex::scoped_lock lock(gridMutexs[index]);
                            grids[index].force -= volP * (piola * Fe.transpose()) * gradWip;
                        }
                    }
                }
            }
        });
#else
        for (int iter = 0; iter < simInfo.particleSize; iter++) {
            auto F = particles[iter].F;
            auto volP = particles[iter].mtl->volume;
            auto h = simInfo.h;
            auto consitutionModel = particles[iter].mtl->cm;
            Matrix3f piola = consitutionModel->calStressTensor(particles[iter]);

            auto [baseNode, wp, dwp] = quatraticInterpolation(particles[iter].pos / h);

            for (int i = 0; i < 3; i++) {
                for (int j = 0; j < 3; j++) {
                    for (int k = 0; k < 3; k++) {
                        Vector3i curNode = baseNode + Vector3i(i, j, k);
                        Vector3f gradWip{
                                dwp(i, 0) * wp(j, 1) * wp(k, 2) / h,
                                wp(i, 0) * dwp(j, 1) * wp(k, 2) / h,
                                wp(i, 0) * wp(j, 1) * dwp(k, 2) / h};
                        auto index = curNode.x() * simInfo.gridH * simInfo.gridL +
                                     curNode.y() * simInfo.gridL + curNode.z();
                        MPM_ASSERT(0 <= index && index < simInfo.gridSize, " PARTICLE OUT OF GRID at UpdateGridForce");
                        // MPM course p43
                        grids[index].force -= volP * (piola * F.transpose()) * gradWip;
                    }
                }
            }
        }
#endif
    }

    void SandMpm::UpdateGridVelocity(float dt) {
#if using_tbb == 1
        tbb::parallel_for(0, (int) activeNodes.size(), [&](int i) {
            int index = activeNodes[i];
            grids[index].vel_bc = grids[index].vel + dt * grids[index].force / grids[index].mass;
            grids[index].vel_ac = grids[index].vel_bc;
        });
#else
        for (int i = 0; i < activeNodes.size(); i++) {
            int index = activeNodes[i];
            grids[index].vel = grids[index].vel + dt * grids[index].force / grids[index].mass;
        }
#endif
    }

    void SandMpm::SolveGridBoundary(int thickness) {
        auto [W, H, L] = std::tie(simInfo.gridW, simInfo.gridH, simInfo.gridL);
        // check x-axis bound

        for (int i = 0; i < thickness; i++) {
            for (int j = 0; j < H; j++) {
                for (int k = 0; k < L; k++) {
                    int index1 = i * H * L + j * L + k;
                    int index2 = (W - i - 1) * H * L + j * L + k;
                    if (grids[index1].vel_ac[0] < 0) {
                        grids[index1].vel_ac[0] = 0.0f;
                    }
                    if (grids[index2].vel_ac[0] > 0) {
                        grids[index2].vel_ac[0] = 0.0f;
                    }
                }
            }
        }


        // check y-axis bound
        for (int i = 0; i < W; i++) {
            for (int j = 0; j < thickness; j++) {
                for (int k = 0; k < L; k++) {
                    int index1 = i * H * L + j * L + k;
                    int index2 = i * H * L + (H - j - 1) * L + k;
                    if (grids[index1].vel_ac[1] < 0) {
                        grids[index1].vel_ac[1] = 0.0f;
                    }
                    if (grids[index2].vel_ac[1] > 0) {
                        grids[index2].vel_ac[1] = 0.0f;
                    }
                }
            }
        }

        // check z-axis bound
        for (int i = 0; i < W; i++) {
            for (int j = 0; j < H; j++) {
                for (int k = 0; k < thickness; k++) {
                    int index1 = i * H * L + j * L + k;
                    int index2 = i * H * L + j * L + (L - k - 1);

                    if (grids[index1].vel_ac[2] < 0) {
                        grids[index1].vel_ac[2] = 0.0f;
                    }

                    if (grids[index2].vel_ac[2] > 0) {
                        grids[index2].vel_ac[2] = 0.0f;
                    }
                }
            }
        }
    }

    void SandMpm::SolveFriction() {
        tbb::parallel_for(0, (int) activeNodes.size(), [&](int i) {
            auto index = activeNodes[i];
            auto dv = grids[index].vel_ac - grids[index].vel_bc;
            auto v = grids[index].vel_ac;
            auto mu = simInfo.friction_mu;
            if (dv.norm() > 1e-5) {
                Vector3f n = dv.normalized();
                auto vt = v - n * (v.dot(n));
                auto t = v.normalized();
                v = v - std::min(vt.norm(), mu * dv.norm()) * t;
            }
            grids[index].vel = v;
        });
    }
    void SandMpm::UpdateF(float dt) {
        // mpm course p42
#if using_tbb == 1
        tbb::parallel_for(0, (int) simInfo.particleSize, [&](int iter) {
            auto Fe = particles[iter].Fe;
            auto h = simInfo.h;
            auto [base_node, wp, dwp] = quatraticInterpolation(particles[iter].pos / h);

            Matrix3f weight = Matrix3f::Zero();
            for (int i = 0; i < 3; i++) {
                for (int j = 0; j < 3; j++) {
                    for (int k = 0; k < 3; k++) {
                        Vector3i curr_node = base_node + Vector3i(i, j, k);
                        Vector3f grad_wip{dwp(i, 0) * wp(j, 1) * wp(k, 2) / h,
                                          wp(i, 0) * dwp(j, 1) * wp(k, 2) / h,
                                          wp(i, 0) * wp(j, 1) * dwp(k, 2) / h};
                        int index = curr_node[0] * simInfo.gridH * simInfo.gridL + curr_node[1] * simInfo.gridL + curr_node[2];
                        MPM_ASSERT(0 <= index && index < simInfo.gridSize, "PARTICLE OUT OF GRID at UpdateF");
                        weight += grids[index].vel_ac * grad_wip.transpose();
                    }
                }
            }
            particles[iter].Fe = Fe + dt * weight * Fe;
            if (particles[iter].Fe.determinant() < 0) {
                MPM_ERROR("particles[{}]'s determinat(F) is negative!\n{}", iter,
                          particles[iter].Fe);
                assert(false);
            }
        });
#else
        for (int iter = 0; iter < simInfo.particleSize; iter++) {
            auto F = particles[iter].F;
            auto h = simInfo.h;
            auto [base_node, wp, dwp] = quatraticInterpolation(particles[iter].pos / h);

            Matrix3f weight = Matrix3f::Zero();
            for (int i = 0; i < 3; i++) {
                for (int j = 0; j < 3; j++) {
                    for (int k = 0; k < 3; k++) {
                        Vector3i curr_node = base_node + Vector3i(i, j, k);
                        Vector3f grad_wip{dwp(i, 0) * wp(j, 1) * wp(k, 2) / h,
                                          wp(i, 0) * dwp(j, 1) * wp(k, 2) / h,
                                          wp(i, 0) * wp(j, 1) * dwp(k, 2) / h};
                        int index = curr_node[0] * simInfo.gridH * simInfo.gridL + curr_node[1] * simInfo.gridL + curr_node[2];
                        MPM_ASSERT(0 <= index && index < simInfo.gridSize, "PARTICLE OUT OF GRID at UpdateF");
                        weight += grids[index].vel * grad_wip.transpose();
                    }
                }
            }
            particles[iter].F = F + dt * weight * F;
        }
#endif
    }

    void SandMpm::G2P() {
#if using_tbb == 1
        tbb::parallel_for(0, (int) simInfo.particleSize, [&](int iter) {
            Vector3f gs_particle_pos = particles[iter].pos / simInfo.h;
            auto [base_node, wp, dwp] = quatraticInterpolation(gs_particle_pos);

            Vector3f v_pic = Vector3f::Zero();
            Vector3f v_flip = particles[iter].vel;
            particles[iter].Bp = Matrix3f::Zero();

            for (int i = 0; i < 3; i++) {
                for (int j = 0; j < 3; j++) {
                    for (int k = 0; k < 3; k++) {
                        Vector3i curr_node = base_node + Vector3i(i, j, k);
                        auto wijk = wp(i, 0) * wp(j, 1) * wp(k, 2);
                        int index = curr_node[0] * simInfo.gridH * simInfo.gridL + curr_node[1] * simInfo.gridL + curr_node[2];
                        MPM_ASSERT(0 <= index && index < simInfo.gridSize, "PARTICLE OUT OF GRID at G2P");


                        v_pic += wijk * grids[index].vel;
                        // TODO: flip error
                        v_flip += wijk * (grids[index].vel - grids[index].vel);
                        particles[iter].Bp += wijk * grids[index].vel *
                                              (curr_node.cast<float>() - gs_particle_pos).transpose();
                        auto transferScheme = particles[iter].mtl->transferScheme;
                        switch (transferScheme) {
                            case TransferScheme::APIC:
                                particles[iter].vel = v_pic;
                            case TransferScheme::FLIP99:
                                (1 - 0.99) * v_pic + 0.99 * v_flip;
                            case TransferScheme::FLIP95:
                                particles[iter].vel =
                                        (1 - simInfo.alpha) * v_pic + simInfo.alpha * v_flip;
                        }
                    }
                }
            }
        });
#else
        for (int iter = 0; iter < simInfo.particleSize; iter++) {
            Vector3f gs_particle_pos = particles[iter].pos / simInfo.h;
            auto [base_node, wp, dwp] = quatraticInterpolation(gs_particle_pos);

            Vector3f v_pic = Vector3f::Zero();
            Vector3f v_flip = particles[iter].vel;
            particles[iter].Bp = Matrix3f::Zero();

            for (int i = 0; i < 3; i++) {
                for (int j = 0; j < 3; j++) {
                    for (int k = 0; k < 3; k++) {
                        Vector3i curr_node = base_node + Vector3i(i, j, k);
                        auto wijk = wp(i, 0) * wp(j, 1) * wp(k, 2);
                        int index = curr_node[0] * simInfo.gridH * simInfo.gridL + curr_node[1] * simInfo.gridL + curr_node[2];
                        MPM_ASSERT(0 <= index && index < simInfo.gridSize, "PARTICLE OUT OF GRID at G2P");

                        v_pic += wijk * grids[index].vel;
                        v_flip += wijk * (grids[index].vel - grids[index].vel);
                        particles[iter].Bp += wijk * grids[index].vel *
                                              (curr_node.cast<float>() - gs_particle_pos).transpose();
                        auto transferScheme = particles[iter].mtl->transferScheme;
                        switch (transferScheme) {
                            case TransferScheme::APIC:
                                particles[iter].vel = v_pic;
                            case TransferScheme::FLIP99:
                            case TransferScheme::FLIP95:
                                particles[iter].vel =
                                        (1 - simInfo.alpha) * v_pic + simInfo.alpha * v_flip;
                        }
                    }
                }
            }
        }
#endif
    }

    void SandMpm::Advection(float dt) {
#if using_tbb == 1
        tbb::parallel_for(0, (int) simInfo.particleSize, [&](int i) {
            particles[i].pos += dt * particles[i].vel;
        });
#else
        for (int i = 0; i < simInfo.particleSize; i++) {
            particles[i].pos += dt * particles[i].vel;
        }
#endif
    }


    void SandMpm::SolvePlastic() {
        tbb::parallel_for(0, (int) simInfo.particleSize, [&](int iter) {
            auto F = particles[iter].Fe;
            JacobiSVD<Matrix3f> svd(F, ComputeFullU | ComputeFullV);
            auto U = svd.matrixV();
            Matrix3f Sigma = svd.singularValues().asDiagonal();
            auto V = svd.matrixV();

            auto [T, delta_q] = Project(Sigma, particles[iter].sand_alpha,
                                        particles[iter].mtl->lambda, particles[iter].mtl->mu);

            particles[iter].Fe = U * T * V.transpose();
            particles[iter].Fp = V * T.inverse() * Sigma * V.transpose() * particles[iter].Fp;
            particles[iter].sand_q += delta_q;

            auto q = particles[iter].sand_q;
            float phi = simInfo.h0 + (simInfo.h1 * q - simInfo.h3) * exp(-simInfo.h2 * q);
//            float phi = 40.f;

            particles[iter].sand_alpha = sqrt(2.f / 3.f) * (2 * sin(phi)) / (3 - sin(phi));
//            spdlog::info("phi:{}", phi);
        });
    }

    std::pair<Matrix3f, float> SandMpm::Project(const Matrix3f &sigma, float alpha, float lambda, float mu) {
        Matrix3f kesi = diagLog(sigma);
        Matrix3f kesi_hat = kesi - (kesi.trace() / 3) * Matrix3f::Identity();

        // case 2
        if (isEqual(kesi_hat, Matrix3f::Zero(), 1e-12) || kesi.trace() > 0) {
//            spdlog::info("case1: {}", kesi.norm());
            return {Matrix3f::Identity(), kesi.norm()};
        }

        // case 1
        auto delta = kesi_hat.norm() + (3 * lambda + 2 * mu) / (2 * mu) * kesi.trace() * alpha;
        if (delta <= 0) {
//            spdlog::info("case2: {}", 0);
            return {sigma, 0};
        }

        // case 3
        auto H = kesi - delta * kesi_hat / kesi_hat.norm();
//        std::cout << "case3: "<< delta << std::endl;
//        std::cout << H << std::endl;
        return {diagExp(H), delta};
    }


}// namespace mpm
