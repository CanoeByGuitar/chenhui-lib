//
// Created by 王晨辉 on 2023/2/1.
//

#ifndef CHENHUI_FRAMEBUFFER_H
#define CHENHUI_FRAMEBUFFER_H

#include <memory>
#include <glad/glad.h>
#include "IBuffer.h"
#include "Renderer/Texture.h"

namespace Renderer{
    class RenderBuffer : public IBuffer{
    public:
        RenderBuffer(uint32_t width, uint32_t height);
        ~RenderBuffer();

        void Bind() override;
        void UnBind() override;
    };

    class FrameBuffer : public IBuffer{
    public:
        FrameBuffer(uint32_t width, uint32_t height);
        void Bind() override;
        void UnBind() override;
        void Resize(uint32_t width, uint32_t height);
        uint32_t GetRenderingTextureID() const;

    private:
        std::unique_ptr<Texture> m_renderTexture;
        std::unique_ptr<RenderBuffer> m_renderBuffer;
        
    };
}

#endif //CHENHUI_FRAMEBUFFER_H
