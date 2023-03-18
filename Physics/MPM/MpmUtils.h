//
// Created by wch on 2023/3/4.
//

#ifndef CHENHUI_MPMUTILS_H
#define CHENHUI_MPMUTILS_H

#include <Eigen/Core>
#include <Eigen/Dense>
#include <fstream>
#include <spdlog/spdlog.h>
#include <Partio.h>
#include <tbb/parallel_for.h>
#include <tbb/tick_count.h>
#include <spdlog/fmt/bundled/color.h>
#include "spdlog/fmt/ostr.h"
#include "spdlog/sinks/stdout_color_sinks.h"
#define TICK(x) auto bench_##x = tbb::tick_count::now();
#define TOCK(x) spdlog::info("---------{}:{:.1f}ms", #x, (tbb::tick_count::now() - bench_##x).seconds() * 1000);

using namespace Eigen;

namespace mpm {
    bool readParticles(const std::string &model_path, std::vector<Vector3f> &positions);

    bool writeParticles(const std::string &write_path, const std::vector<Vector3f> &positions);


    inline Vector3f calcQuadratic(float o, float x) {
        // +-(o)------------(o+1)--(x)-(o+1.5)--(o+2)-+
        // 或
        // +-(o)----(o+0.5)--(x)-(o+1)----------(o+2)-+
        float d0 = x - o;
        float d1 = d0 - 1;
        float d2 = 1 - d1;

        return {0.5f * (1.5f - d0) * (1.5f - d0), 0.75f - d1 * d1,
                0.5f * (1.5f - d2) * (1.5f - d2)};
    }

    inline Vector3f calcQuadraticGrad(float o, float x) {
        float d0 = x - o;
        float d1 = d0 - 1;
        float d2 = 1 - d1;

        return {d0 - 1.5f, -2 * d1, 1.5f - d2};
    }

    std::tuple<Vector3i, Matrix3f, Matrix3f> quatraticInterpolation(const Vector3f &pos);

    template<class Tensor>
    std::string make_string(const Tensor v) {
        std::string output;
        for (int i = 0; i < v.rows(); i++) {
            for (int j = 0; j < v.cols(); j++) {
                output.append(std::to_string(v(i, j)) + std::to_string(",]"[j + 1 == v.cols()]));
            }
            output.append("\n");
        }
        return output;
    }


// logger
    class MPMLog {
    public:
        static void init();

        MPMLog() = default;

        virtual ~MPMLog() = default;

        inline static const std::shared_ptr<spdlog::logger> &get_logger() {
            return s_logger;
        }

    private:
        static std::shared_ptr<spdlog::logger> s_logger;
    };

    class MPMProfiler {
    public:
        MPMProfiler(const std::string &tag);

        virtual ~MPMProfiler();

    private:
        std::string tag;
        std::chrono::high_resolution_clock::time_point start;
    };

#ifndef DIST_VERSION
// Client log macros
#define MPM_FATAL(...) MPMLog::get_logger()->fatal(__VA_ARGS__)
#define MPM_ERROR(...) MPMLog::get_logger()->error(__VA_ARGS__)
#define MPM_WARN(...) MPMLog::get_logger()->warn(__VA_ARGS__)
#define MPM_INFO(...) MPMLog::get_logger()->info(__VA_ARGS__)
#define MPM_TRACE(...) MPMLog::get_logger()->trace(__VA_ARGS__)

#define MPM_ASSERT(condition, statement)                                       \
  do {                                                                         \
    if (!(condition)) {                                                        \
      mpm::MPM_ERROR(statement);                                               \
      assert(condition);                                                       \
    }                                                                          \
  } while (false)

#define MPM_FUNCTION_SIG __func__
#define MPM_PROFILE(tag) MPMProfiler timer##__LINE__(tag)
#define MPM_PROFILE_FUNCTION() MPM_PROFILE(MPM_FUNCTION_SIG)

#else

#define MPM_FATAL(...)
#define MPM_ERROR(...)
#define MPM_WARN(...)
#define MPM_INFO(...)
#define MPM_TRACE(...)

#define MPM_ASSERT(...)

#define MPM_FUNCTION_SIG
#define MPM_PROFILE(tag)
#define MPM_PROFILE_FUNCTION()

#endif

}


#endif //CHENHUI_MPMUTILS_H
