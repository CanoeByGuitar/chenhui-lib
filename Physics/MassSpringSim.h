//
// Created by 王晨辉 on 2023/1/30.
//

#ifndef CHENHUI_MASSSPRINGSIM_H
#define CHENHUI_MASSSPRINGSIM_H

#include <Eigen/Dense>
#include <vector>

typedef Eigen::Vector3f Vector3f;

namespace MassSpring{
    struct node{
        int idx;
        float restLength;
    };

    struct particle{
        int idx;
        Vector3f pos;
        Vector3f vel;
        float mass;
        std::vector<node> incidentParticles;
        particle(int idx, Vector3f pos, Vector3f vel, float mass):idx(idx), pos(pos), vel(vel), mass(mass){}
    };


    class MassSpringSim{
    public:
        MassSpringSim(float stiffness, float gravity);
        void InitializeWithObj(const std::string &path);
        void OnAdvanceTimeStep(float dt);


    private:
        std::vector<particle> m_data;
        float m_stiffness;
        float m_gravity;
        Vector3f m_simArea; // right top corner of sim area.  Left bottom corner is (0,0,0)


    };




}




#endif //CHENHUI_MASSSPRINGSIM_H
