//
// Created by 王晨辉 on 2023/2/26.
//

#include "SVD.h"

namespace math{
    std::pair<float, float> SVD::symSchur2(const MatrixXf &A, int p, int q) {
        float s, c;
        if(A(p,q) != 0){
            float t = 0;
            float tau = (A(q, q) - A(p, p)) / (2 * A(p, q));
            if(tau > 0){
                t = 1 / (tau + sqrt(tau * tau + 1));
            }else{
                t = 1 / (tau - sqrt(tau * tau + 1));
            }
            c = 1 / sqrt(1 + t * t);
            s = t * c;
        }else{
            c = 1;
            s = 0;
        }
        return {c, s};
    }

    void SVD::calJacobiSVD(const MatrixXf &A, float tol) {
        // B = V A V^T
        MatrixXf B = A;
        int n = B.rows();

        MatrixXf V = MatrixXf::Identity(n, n);
        float delta = tol * F_normal(B);
        while(OFF(B) > delta){
           MatrixXf::Index pIndex, qIndex;
            float max = maxAbs(A, pIndex, qIndex);

//            std::pair<float, float> pair =  symSchur2(A, *p, *q);
//            float c = pair.first;
//            float s = pair.second;
//            B = J(n, *p , *q, c, s).transpose() * B * J(n, *p , *q, c, s);
//            V = J(n, *p , *q, c, s).transpose() * V;
        }
        for(int i = 0; i < n; i++){
            m_S.push_back(B(i, i));
        }
        m_V = V;
    }

    float SVD::F_normal(const MatrixXf &A) {
        return A.squaredNorm();
    }

    float SVD::OFF(const MatrixXf &A) {
        float sum = 0;
        for(int i = 0; i < A.rows(); i++){
            sum+= (A(i, i) * A(i, i));
        }
        return A.squaredNorm() - sum;
    }

    float SVD::maxAbs(const MatrixXf &A, MatrixXf::Index &p, MatrixXf::Index &q) {
        MatrixXf::Index *p_min, *q_min, *p_max, *q_max;
        float min = A.minCoeff(p_min, q_min);
        float max = A.maxCoeff(p_max, q_max);
        float ans;
        if(min < 0 && max > 0){
            if(abs(min) > abs(max)){
                p = *p_min;
                q = *q_min;
                ans = min;
            }else{
                p = *p_max;
                q = *q_max;
                ans = max;
            }
        }else if( min < 0 && max < 0){
            p = *p_min;
            q = *q_min;
            ans = min;
        }else{
            p = *p_max;
            q = *q_max;
            ans = max;
        }
        return ans;
    }

    MatrixXf SVD::J(int n, int p, int q, float c, float s) {
        MatrixXf J = MatrixXf::Identity(n, n);
        J(p, p) = c;
        J(p, q) = s;
        J(q, p) = -s;
        J(q, q) = c;
        return J;
    }
}



