//
// Created by wch on 2023/3/4.
//


#include "eigen/Eigen/Core"
#include "eigen/Eigen/Dense"
#include <iostream>

using namespace Eigen;


int main(){
    Vector3f a = {1, 1, 1};
    Vector3f b = {2, 1, 3};
    Vector3f c = {4, 4, 1};

    Matrix3f m;
    m << a, b, c;

    std::cout << m.determinant() << " " << a.cross(b).dot(c);
}