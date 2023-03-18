//
// Created by wch on 2023/3/18.
//

// filesystem need gcc-9 and cpp17
#include <Physics/MPM/MpmUtils.h>
#include <Physics/MPM/MpmSimulationBase.h>
#include <filesystem>
#include <iostream>
#include <memory>

using namespace std;
using namespace Eigen;
using namespace mpm;
namespace fs = std::filesystem;

int main(){
    mpm::MPMLog::init();
    spdlog::set_level(spdlog::level::info);
    auto sim = std::make_shared<mpm::MpmSimulator>();

    auto mtl_jello = new Material(50.0f, 0.3f, 10.0f, 1.0f);
    auto mtl_water = new Material(500.0f, 0.40f, 0.001f, 1.0f);

    auto cm_solid = std::make_shared<mpm::NeoHookean_Piola>();
    auto cm_fluid = std::make_shared<mpm::NeoHookean_Fluid>();
    auto cm_fluid_2 = std::make_shared<mpm::CDMPM_Fluid>();

    sim->ClearSimulation();
    Vector3f gravity{0.0f, -9.8f, 0.0f};
    Vector3f area{1.0f, 1.0f, 1.0f};
    Vector3f velocity{-2.5f, 0.5f, -0.3f};
    float h = 0.02f;

    sim->Init(gravity, area, h);
    sim->SetConstitutionModel(cm_fluid_2);
    sim->SetTransferScheme(MpmSimulator::TransferScheme::FLIP99);

    std::vector<Vector3f> positions;
    auto model_path = "../../resources/models/small_cube.obj";


    if(mpm::readParticles(model_path, positions)){
        sim->AddObject(positions, mtl_water, Vector3f(0, -0.19, 0));
    }else{
        return 0;
    }


    int frame_rate = 24;
    float dt = 1e-4;
    int total_frame = 300;
    int steps_per_frame = (int)ceil((1.0f / frame_rate) / dt);
    spdlog::info("Simulation start, Meta Informations:\n"
                 "\tframe_rate: {}\n"
                 "\tdt: {}\n"
                 "\tsteps_per_frame: {}\n",
                 frame_rate, dt, steps_per_frame);

    std::string output_dir = "./output/test/";
    writeParticles(output_dir + "0.bgeo", sim->GetPosition());
    for(int frame = 0; frame < total_frame; frame++){
//        if (frame && frame % 50 == 0) {
//            sim->AddObject(positions, mtl_water);
//        }
        spdlog::info("frame#{}", frame+1);
        for(int i = 0; i < steps_per_frame; i++) {
//            spdlog::info("----substep#{}", i);
            sim->Substep(dt);
        }

        writeParticles(output_dir + std::to_string(frame+1) + ".bgeo",
                       sim->GetPosition());
    }
    spdlog::info("mpm finished!\n");
    return 0;
}












