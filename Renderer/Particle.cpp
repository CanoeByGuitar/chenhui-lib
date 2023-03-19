//
// Created by 王晨辉 on 2023/2/16.
//

#include "Particle.h"


namespace Renderer {

    Particles::Particles(float *data, int num, const char *vertexPath, const char *fragmentPath) {
        m_data = data;
        m_num = num;

        // 编译shader 需要放在glfw建立后
        m_shader = new Shader(vertexPath, fragmentPath);
    }

    float *Particles::getData() const {
        return m_data;
    }

    int Particles::getNum() const {
        return m_num;
    }

    Shader *Particles::getShader() const {
        return m_shader;
    }

    Particles::~Particles() {
        if(m_data){
            delete[] m_data;
            m_data = nullptr;
        }

        if(m_shader){
            delete[] m_shader;
            m_shader = nullptr;
        }


    }

    void Particles::updateData(std::vector<float> &&data){
        m_data = data.data();
        std::vector<float>().swap(data);
    }
}

