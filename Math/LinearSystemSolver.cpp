//
// Created by 王晨辉 on 2023/1/31.
//

#include "LinearSystemSolver.h"

void math::LinearSystemSolver::JacobiIterator(const MatrixXf &A, const VectorXf &b, VectorXf &x) {
    int n = A.rows();
    VectorXf newX(n);
    for (int i = 0; i < n; i++) {
        newX(i) = b(i);
        for (int j = 0; j < n; j++) {
            if (i != j) {
                newX(i) -= A(i,j) * x(j);
            }
        }
        newX(i) /= A(i, i);
    }
    x = newX;
}

VectorXf math::LinearSystemSolver::JacobiSolver(MatrixXf &A, VectorXf &b, int iter) {
    assert(A.rows() == b.size());
    int n = A.rows();
    VectorXf x = VectorXf::Zero(n);
    spdlog::info("A.determinant: {}", A.determinant());
    for (int i = 0; i < iter; i++) {
        JacobiIterator(A, b, x);
        spdlog::info("iter{}:   {}", i, x[0]);
    }
    return x;
}
