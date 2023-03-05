//
// Created by 王晨辉 on 2023/3/2.
//

#include "../Vec3.h"

using namespace std;

int main(){
    auto v1 = vec3(1,2,3);
    auto v2 = vec3(2, 4, 6);
    cout << v1 << v2;
    cout << v1 + v2;
    cout << v1 * v2;
    cout << v1 * 2;
    cout << v1.norm();
    cout << unit_vec(v1);
    cout << cross(vec3(1,0, 0), vec3(0,1,0));
}

