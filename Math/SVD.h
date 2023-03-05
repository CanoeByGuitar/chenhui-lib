//
// Created by 王晨辉 on 2023/2/26.
//

#ifndef CHENHUI_SVD_H
#define CHENHUI_SVD_H

#include <Eigen/Dense>
#include <spdlog/spdlog.h>
#include <vector>


using namespace Eigen;

namespace math{
    class SVD{
        // A = U*S*V^T

    public:

        void calJacobiSVD(const MatrixXf &A, float tol = 1e-5);

    private:

        std::pair<float, float> symSchur2(const MatrixXf &A, int p, int q);

        float F_normal(const MatrixXf &A);
        float OFF(const MatrixXf &A);
        float maxAbs(const MatrixXf &A, MatrixXf::Index &p, MatrixXf::Index &q);
        MatrixXf J(int n, int p, int q, float c, float s);

    public:
        MatrixXf m_U;
        MatrixXf m_V;
        std::vector<float> m_S;



    };
}


#endif //CHENHUI_SVD_H
