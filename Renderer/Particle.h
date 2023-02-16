//
// Created by 王晨辉 on 2023/2/16.
//

#ifndef CHENHUI_PARTICLE_H
#define CHENHUI_PARTICLE_H

#include "Shader.h"

namespace Renderer{
    class Particles{
    public:
        Particles(float* data, int num, const char* vertexPath = "",const char* fragmentPath = "");


        float *getData() const;

        int getNum() const;

        Shader *getShader() const;

    private:
        float* m_data;
        int m_num;
        Shader* m_shader;
    };
}

#endif //CHENHUI_PARTICLE_H
