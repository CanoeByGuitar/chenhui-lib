//
// Created by 王晨辉 on 2023/2/9.
//

#ifndef CHENHUI_RENDERCONFIG_H
#define CHENHUI_RENDERCONFIG_H

#include "glad/glad.h"

namespace Renderer{
    enum PolygonMode{
        Fill = GL_FILL,
        Line = GL_LINE
    };

    enum Primitive{
        Triangle = GL_TRIANGLES,
        Lines = GL_LINES,
        Points = GL_POINTS,
    };

    struct DrawConfig{
        PolygonMode polygonMode = Fill;
        Primitive primitive = Triangle;
    };
}

#endif //CHENHUI_RENDERCONFIG_H
