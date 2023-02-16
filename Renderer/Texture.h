//
// Created by 王晨辉 on 2023/2/1.
//

#ifndef CHENHUI_TEXTURE_H
#define CHENHUI_TEXTURE_H
#include <cstdint>
#include "glad/glad.h"

namespace Renderer
{
    class Texture
    {
    public:
        Texture(uint32_t width, uint32_t height, uint8_t * textureData);
        ~Texture();

        void Bind(uint32_t slot) const;
        void UnBind() const;

        uint32_t GetID() const;
        void UpdateData(unsigned char * data);
    private:
        uint32_t m_textureID;
        const uint32_t m_width;
        const uint32_t m_height;
    };
}

#endif //CHENHUI_TEXTURE_H
