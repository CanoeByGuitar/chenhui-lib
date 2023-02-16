//
// Created by 王晨辉 on 2023/1/31.
//

#ifndef CHENHUI_LINEARSYSTEMSOLVER_H
#define CHENHUI_LINEARSYSTEMSOLVER_H

#include <Eigen/Dense>
#include <spdlog/spdlog.h>

using namespace Eigen;

namespace math{
    class LinearSystemSolver{
    public:
        static void JacobiIterator(const MatrixXf &A, const VectorXf &b, VectorXf &x);
        static VectorXf JacobiSolver(MatrixXf &A, VectorXf &b, int iter);

    };

}


#endif //CHENHUI_LINEARSYSTEMSOLVER_H
