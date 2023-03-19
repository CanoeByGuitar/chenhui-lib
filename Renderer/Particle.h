//
// Created by 王晨辉 on 2023/2/16.
//

#ifndef CHENHUI_PARTICLE_H
#define CHENHUI_PARTICLE_H

#include "Shader.h"
#include <vector>
#include <tbb/parallel_for.h>

namespace Renderer{
    class Particles{
    public:
        Particles(float* data, int num, const char* vertexPath = "",const char* fragmentPath = "");
        ~Particles();

        float *getData() const;

        int getNum() const;

        Shader *getShader() const;

        void updateData(std::vector<float> &&data);
    private:

        int m_num;
        Shader* m_shader;
        float* m_data;
    };
}

#endif //CHENHUI_PARTICLE_H
