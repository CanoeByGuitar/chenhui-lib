//
// Created by 王晨辉 on 2023/2/26.
//

#include "SVD.h"
#include <iostream>

using namespace Eigen;

int main(){
    MatrixXf A(2, 2);
    A << 2, 0.5, 0.5, 1;
    math::SVD svd;
    svd.calJacobiSVD(A);

    for(int i = 0; i < A.rows(); i++){
        std::cout << svd.m_S[i];
    }

}