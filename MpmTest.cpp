//
// Created by wch on 2023/3/18.
//

// filesystem need gcc-9 and cpp17

#include <Physics/MPM/MpmUtils.h>
#include <Renderer/Scene.h>
#include <iostream>
#include <memory>
#include <Physics/MPM/SandMpmSimulation.h>
#include <Physics/MPM/MpmSimulation.h>

#define TEST 2
#define WRITE_OUTPUT 1
#define OPENGL_SHOW 1
#define BASE_DIR "./output_mpm/"

int main() {
    mpm::MPMLog::init();
    spdlog::set_level(spdlog::level::info);
    auto sim = std::make_shared<mpm::MpmSimulatorBase>();
    std::string output_dir = BASE_DIR;
    int frame_rate = 24;
    float dt = 1e-4;
    int total_frame = 150;
    int steps_per_frame = (int) ceil((1.0f / frame_rate) / dt);


    // test case
    {
        if (TEST == 1) {
            sim = std::make_shared<mpm::MpmSimulator>();
            output_dir = std::string(BASE_DIR) + "solids/";
            frame_rate = 24;
            dt = 1e-4;
            steps_per_frame = (int) ceil((1.0f / frame_rate) / dt);


            spdlog::info("Simulation start, Meta Informations:\n"
                         "\tframe_rate: {}\n"
                         "\tdt: {}\n"
                         "\tsteps_per_frame: {}\n",
                         frame_rate, dt, steps_per_frame);

            auto cm_solid = new mpm::NeoHookean_Piola;
            auto cm_fluid = new mpm::NeoHookean_Fluid;
            auto cm_fluid_2 = new mpm::CDMPM_Fluid;
            auto cm_sand = new mpm::DruckerPrager;

            auto mtl_jello_1 = new mpm::Material(5.0f, 0.3f, 10.0f, 1.0f, cm_solid, mpm::TransferScheme::APIC);
            auto mtl_jello_2 = new mpm::Material(50.0f, 0.3f, 10.0f, 1.0f, cm_solid, mpm::TransferScheme::APIC);
            auto mtl_jello_3 = new mpm::Material(500.0f, 0.40f, 0.001f, 1.0f, cm_fluid_2,mpm::TransferScheme::FLIP99);



            sim->ClearSimulation();
            Vector3f gravity{0.0f, -9.8f, 0.0f};
            Vector3f area{1.0f, 1.0f, 1.0f};
            float h = 0.02f;

            sim->Init(gravity, area, h);
            std::vector<Vector3f> positions;
            auto model_path = "../../resources/models/small_cube.obj";
            if (mpm::readParticles(model_path, positions)) {
                sim->AddObject(positions, mtl_jello_1, Vector3f(-0.6, 0, -0.3), 0);
                sim->AddObject(positions, mtl_jello_2, Vector3f(-0.3, 0, 0), 1);
                sim->AddObject(positions, mtl_jello_3, Vector3f(0, 0, 0.3), 2);
            } else {
                return -1;
            }
        }

        if(TEST == 2){
            sim = std::make_shared<mpm::SandMpm>();
            output_dir = std::string(BASE_DIR) + "sand/";
            frame_rate = 24;
            dt = 1e-4;
            steps_per_frame = (int) ceil((1.0f / frame_rate) / dt);


            spdlog::info("Simulation start, Meta Informations:\n"
                         "\tframe_rate: {}\n"
                         "\tdt: {}\n"
                         "\tsteps_per_frame: {}\n",
                         frame_rate, dt, steps_per_frame);

//            auto cm_sand = new mpm::DruckerPrager();
            auto cm_sand = new mpm::DruckerPrager;
            auto cm_solid = new mpm::NeoHookean_Piola;
            auto mtl_jello_1 = new mpm::Material(100, 0.4f, 2200.0f, 1.0f, cm_sand, mpm::TransferScheme::APIC);
            auto mtl_jello_2 = new mpm::Material(5.0f, 0.3f, 10.0f, 1.0f, cm_solid, mpm::TransferScheme::APIC);
            sim->ClearSimulation();
            Vector3f gravity{0.0f, -9.8f, 0.0f};
            Vector3f area{1.0f, 1.0f, 1.0f};
            float h = 0.02f;

            sim->Init(gravity, area, h);
            std::vector<Vector3f> positions;
            auto model_path = "../../resources/models/small_cube.obj";
            if (mpm::readParticles(model_path, positions)) {
                sim->AddObject(positions, mtl_jello_1, Vector3f(-0.6, -0.17, -0.3), 0);
            } else {
                return -1;
            }
        }
    }

    if (WRITE_OUTPUT) {
        mpm::createPathToDir(output_dir);
        mpm::writeParticles(output_dir + "0.bgeo", sim->GetPosition(), sim->GetObjID());
    }

    Renderer::Scene scene(800, 600);
    scene.m_camera.Position = glm::vec3(0.5, 0.5, -1);
    scene.m_camera.Front = glm::vec3(0, 0, -0.1);
    auto vec = sim->GetPositionWithIdToRenderer();
    float *particles = vec.data();
    int particleNum = vec.size() / 4;

#ifdef __APPLE__
    Renderer::Particles model(particles, particleNum,
                              "/Volumes/disk2/ChenhuiLib/resources/shader/particle.vert",
                              "/Volumes/disk2/ChenhuiLib/resources/shader/particle.frag");
#else
    Renderer::Particles model(particles, particleNum,
                              "/home/wch/github/chenhui-lib/resources/shader/particle.vert",
                              "/home/wch/github/chenhui-lib/resources/shader/particle.frag");
#endif

    scene.AddModel(&model);

    int frame = 0;
    while (!scene.ShouldWindowClose() && frame < total_frame) {
        scene.Draw();
        if (!scene.m_paused) {
            spdlog::info("frame#{}", frame + 1);

            TICK(draw_one_frame)
            for (int i = 0; i < steps_per_frame; i++) {
//                spdlog::info("------substep#{}", i);
                sim->Substep(dt);
            }
            TOCK(draw_one_frame)

            if (WRITE_OUTPUT) mpm::writeParticles(output_dir + std::to_string(frame + 1) + ".bgeo",
                                                  sim->GetPosition(), sim->GetObjID());
            frame++;
        }
        if (OPENGL_SHOW) {
            scene.m_particleModel->updateData(sim->GetPositionWithIdToRenderer());
        }
    }
    return 0;
}


//            spdlog::info("camera info: {},{},{}  {},{},{}",
//                         scene.m_camera.Position.x,scene.m_camera.Position.y,scene.m_camera.Position.z,
//                         scene.m_camera.Front.x,scene.m_camera.Front.y,scene.m_camera.Front.z);