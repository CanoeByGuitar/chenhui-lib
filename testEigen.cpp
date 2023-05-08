//
// Created by wch on 2023/3/4.
//


#include "eigen/Eigen/Core"
#include "eigen/Eigen/Dense"
#include <iostream>

using namespace Eigen;
using namespace std;

int main(){
    auto a = Matrix<float, Dynamic, 1>::Zero(3, 1);
    cout << a;
//    JacobiSVD<MatrixXf> svd(F, ComputeFullU | ComputeFullV);
//    auto s = svd.singularValues();
//    auto logs = s.array();
//    std::cout << logs;

}