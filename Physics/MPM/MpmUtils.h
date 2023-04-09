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
#include <sys/stat.h>
#include <sys/types.h>
#include <system_error>
#define TICK(x) auto bench_##x = tbb::tick_count::now();
#define TOCK(x) spdlog::info("---------{}:{:.1f}ms", #x, (tbb::tick_count::now() - bench_##x).seconds() * 1000);

using namespace Eigen;

namespace mpm {
    inline Matrix3f diagLog(const Matrix3f &A){
        Matrix3f ret = A;
        ret(0, 0) = log(A(0, 0));
        ret(1, 1) = log(A(1, 1));
        ret(2, 2) = log(A(2, 2));
        return  ret;
    }

    inline Matrix3f diagExp(const Matrix3f &A){
        Matrix3f ret = A;
        ret(0, 0) = exp(A(0, 0));
        ret(1, 1) = exp(A(1, 1));
        ret(2, 2) = exp(A(2, 2));
        return  ret;
    }


    inline bool isEqual(const Matrix3f &lhs, const Matrix3f &rhs, float p = 1e-5){
        for(int i = 0; i < 3; i++){
            for(int j = 0; j < 3; j++){
                if(abs(lhs(i,j) - rhs(i,j)) > p) return false;
            }
        }
        return true;
    }



/**
  Creates a directory if it does not exist
*/
    inline void createDir(const std::string& dir)
    {
        if (dir.empty()) {
            throw(std::runtime_error("Can't create directory with no name"));
        }
        struct stat info;
        if (stat(dir.c_str(), &info) != 0) {
            int status;
#ifdef _WIN32
            status = _mkdir(dir.c_str());
#else
            status = mkdir(dir.c_str(), S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH);
#endif
            if (status == 0)
                return;
            if (errno != EEXIST)
                throw(std::system_error(errno, std::system_category()));
        }
    }

/**
  Creates a whole path of directories if any don't exist
  like mkdir -p
*/
inline void createPathToDir(const std::string& dir){
    size_t temp = 1;
    while(dir.find("/", temp) != dir.npos){
        temp = dir.find("/", temp) + 1;
        std::string s = dir.substr(0, temp);
        createDir(s);
    }
    if(dir.back() != '/') createDir(dir);
}

    bool readParticles(const std::string &model_path, std::vector<Vector3f> &positions);

    bool writeParticles(const std::string &write_path, const std::vector<Vector3f> &positions);
    bool writeParticles(const std::string &write_path, const std::vector<Vector3f> &positions, const std::vector<int> &id);

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
