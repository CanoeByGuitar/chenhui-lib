//
// Created by wch on 2023/3/4.
//
#include "MpmUtils.h"

namespace mpm{
    bool readParticles(const std::string &model_path, std::vector<Vector3f> &positions){
        std::ifstream input(model_path);
        std::string line;
        Vector3f pos;
        if(input){
            positions.clear();
            while(std::getline(input, line)){
                if(line[0] == 'v'){
                    sscanf(line.c_str(), "v %f %f %f", &pos[0], &pos[1], &pos[2]);
                    positions.push_back(pos);
                }
            }
            return true;
        }else{
            spdlog::info("model_path:{} not found", model_path);
            return false;
        }
    }

    bool writeParticles(const std::string &write_path, const std::vector<Vector3f> &positions){
        Partio::ParticlesDataMutable *parts = Partio::create();
        Partio::ParticleAttribute pos_attr = parts->addAttribute("position", Partio::VECTOR, 3);
        Partio::ParticleAttribute index_attr = parts->addAttribute("index", Partio::INT, 1);
        for(auto i = 0; i < positions.size(); i++){
            int idx = parts->addParticle();
            auto *p = parts->dataWrite<Vector3f>(pos_attr, idx);
            auto *index = parts->dataWrite<int>(index_attr, idx);
            *p = positions[i];
            *index = i;
        }
        Partio::write(write_path.c_str(), *parts);
        parts->release();
        return true;
    }

    bool writeParticles(const std::string &write_path, const std::vector<Vector3f> &positions, const std::vector<int> &ids){
        Partio::ParticlesDataMutable *parts = Partio::create();
        Partio::ParticleAttribute pos_attr = parts->addAttribute("position", Partio::VECTOR, 3);
        Partio::ParticleAttribute index_attr = parts->addAttribute("index", Partio::INT, 1);
        Partio::ParticleAttribute id_attr = parts->addAttribute("id", Partio::INT, 1);
        for(auto i = 0; i < positions.size(); i++){
            int idx = parts->addParticle();
            auto *p = parts->dataWrite<Vector3f>(pos_attr, idx);
            auto *index = parts->dataWrite<int>(index_attr, idx);
            auto *objID = parts->dataWrite<int>(id_attr, idx);
            *p = positions[i];
            *objID = ids[i];
            *index = i;
        }
        Partio::write(write_path.c_str(), *parts);
        parts->release();
        return true;
    }

    std::tuple<Vector3i, Matrix3f, Matrix3f> quatraticInterpolation(const Vector3f &pos){
        Vector3i baseNode = floor(pos.array() - 0.5f).cast<int>();
        Matrix3f wp, dwp;
        wp << calcQuadratic(baseNode[0], pos[0]),
                calcQuadratic(baseNode[1], pos[1]),
                calcQuadratic(baseNode[2], pos[2]);

        dwp << calcQuadraticGrad(baseNode[0], pos[0]),
                calcQuadraticGrad(baseNode[1], pos[1]),
                calcQuadraticGrad(baseNode[2], pos[2]);

        return {baseNode, wp, dwp};
    }

    std::shared_ptr<spdlog::logger> MPMLog::s_logger;
    MPMProfiler::MPMProfiler(const std::string &tag) {
        start = std::chrono::high_resolution_clock::now();
    }
    MPMProfiler::~MPMProfiler() {
        auto end =  std::chrono::high_resolution_clock::now();
        MPM_TRACE("[profiler] {} cost ms",  tag,
                  std::chrono::duration_cast<std::chrono::microseconds>(end - start).count() / 1000.0f);
    }

    void MPMLog::init() {
        s_logger = spdlog::stdout_color_mt("MPM");
        s_logger->set_pattern("[%^%l%$][%n]%v");
        s_logger->set_level(spdlog::level::level_enum::trace);
    }


}
