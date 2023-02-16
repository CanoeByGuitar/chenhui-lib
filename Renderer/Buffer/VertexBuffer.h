//
// Created by 王晨辉 on 2023/2/9.
//

#ifndef CHENHUI_VERTEXBUFFER_H
#define CHENHUI_VERTEXBUFFER_H
#include <vector>
#include <glad/glad.h>
#include "IBuffer.h"

namespace Renderer
{
    class VertexBuffer : public IBuffer
    {
    public:
        VertexBuffer(const std::vector<float>& vertices);
        ~VertexBuffer();
        void Bind() override;
        void UnBind() override;
    };
}

#endif //CHENHUI_VERTEXBUFFER_H
