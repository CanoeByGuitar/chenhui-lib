//
// Created by 王晨辉 on 2023/2/9.
//

#ifndef CHENHUI_INDEXBUFFER_H
#define CHENHUI_INDEXBUFFER_H

#include <vector>
#include <cstdint>
#include "glad/glad.h"

#include "IBuffer.h"

namespace Renderer{
    class IndexBuffer : public IBuffer
    {
    public:
        IndexBuffer(std::vector<uint32_t> indices);
        ~IndexBuffer();
        void Bind() override;
        void UnBind() override;
    };
}


#endif //CHENHUI_INDEXBUFFER_H
