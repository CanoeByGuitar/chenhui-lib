//
// Created by 王晨辉 on 2023/2/14.
//

#ifndef CHENHUI_SCENE_H
#define CHENHUI_SCENE_H

#include <glad/glad.h>
#include <glfw3.h>
#include "Camera.h"
#include <spdlog/spdlog.h>
#include "Camera.h"
#include "Shader.h"
#include "Particle.h"
#include "Buffer/FrameBuffer.h"
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <vector>


namespace Renderer {

    class Scene {
    public:
        Scene(int w = 800, int h = 600);
        void Init();

        void AddModel(Particles* particles);

        void Draw();

        static void FrameBufferSizeCallback(GLFWwindow* window, int width, int height);
        static void MouseCallBack(GLFWwindow* window, double xposIn, double yposIn);
        static void ScrollCallback(GLFWwindow* window, double xoffset, double yoffset);

        void ProcessInput();
        bool ShouldWindowClose();



    private:
        GLFWwindow *m_window;
        int m_w;
        int m_h;

        float m_dt;
        float m_currentFrame;
        float m_lastFrame;

    public:
        Particles *m_particleModel;
        Camera m_camera;
        bool m_paused;
    };



}



#endif //CHENHUI_SCENE_H
