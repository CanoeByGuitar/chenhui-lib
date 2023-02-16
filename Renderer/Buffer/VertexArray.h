//
// Created by 王晨辉 on 2023/2/9.
//

#ifndef CHENHUI_VERTEXARRAY_H
#define CHENHUI_VERTEXARRAY_H

#include <stdint.h>
#include "glad/glad.h"
#include "VertexBuffer.h"


namespace Renderer{
    class VertexArray : public IBuffer{
    public:
        VertexArray();
        ~VertexArray();

        void Bind() override;
        void UnBind() override;
        void BindAttribute(uint32_t attribute, VertexBuffer& vertexBuffer,
                           uint32_t type, uint64_t count, uint64_t stride, intptr_t offset);
    };
}
#endif //CHENHUI_VERTEXARRAY_H
