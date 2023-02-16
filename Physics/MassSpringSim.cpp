//
// Created by 王晨辉 on 2023/1/30.
//

#include "MassSpringSim.h"

MassSpring::MassSpringSim::MassSpringSim(float stiffness, float gravity) {

}

void MassSpring::MassSpringSim::InitializeWithObj(const std::string &path) {

}

void MassSpring::MassSpringSim::OnAdvanceTimeStep(float dt) {
    int n = m_data.size();
    // update v
    auto totalForce = Vector3f(0, -m_gravity, 0);
    for(int i = 0; i < n; i++){
        for(int j = 0; j < m_data[i].incidentParticles.size(); j++){
            Vector3f xi = m_data[i].pos;
            Vector3f xj = m_data[m_data[i].incidentParticles[j].idx].pos;
            float restLength = m_data[i].incidentParticles[j].restLength;
            totalForce += -m_stiffness * ((xi - xj).norm() - restLength) * (xi - xj).normalized();
            m_data[i].vel += dt * totalForce / m_data[i].mass;
        }
    }
    // ground BC
    for(int i = 0; i < n; i++){
        if(m_data[i].pos.y() < 0.0f){
            m_data[i].pos.y() = 0.0f;
            m_data[i].vel.y() = 0.0f;
        }
    }
    // update x
    for(int i = 0; i < n; i++){
        m_data[i].pos += dt * m_data[i].vel;
    }
}
