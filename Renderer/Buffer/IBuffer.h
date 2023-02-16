//
// Created by 王晨辉 on 2023/2/1.
//

#ifndef CHENHUI_IBUFFER_H
#define CHENHUI_IBUFFER_H

#include <cstdint>

namespace Renderer{
    class IBuffer{
    public:
        virtual void Bind() = 0;
        virtual void UnBind() = 0;
        uint32_t GetBufferID()const{
            return m_bufferID;
        }

    protected:
        uint32_t m_bufferID;

    };
}


#endif //CHENHUI_IBUFFER_H
