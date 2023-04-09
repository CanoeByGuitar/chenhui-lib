//
// Created by wch on 2023/3/4.
//


#include "eigen/Eigen/Core"
#include "eigen/Eigen/Dense"
#include <iostream>

using namespace Eigen;


int main(){
    Matrix2f F;
    F << 1, 2, 3, 4;
    Matrix2f C;
    C << 2, 0, 0, 1;
    F = F * C;
    std::cout << F;
//    JacobiSVD<MatrixXf> svd(F, ComputeFullU | ComputeFullV);
//    auto s = svd.singularValues();
//    auto logs = s.array();
//    std::cout << logs;

}