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
    enum DrawType{
        POINT,
        LINE,
        TRIANGLE
    };
    class Scene {
        // TODO: change to pure virtual
        // represents Particle Scene for now
    public:
        Scene(int w = 800, int h = 600);
        void Init();

        void AddModel(Particles* particles);

        virtual void SetRenderData(){};
        virtual void Draw();

        static void FrameBufferSizeCallback(GLFWwindow* window, int width, int height);
        static void MouseCallBack(GLFWwindow* window, double xposIn, double yposIn);
        static void ScrollCallback(GLFWwindow* window, double xoffset, double yoffset);

        void ProcessInput();
        bool ShouldWindowClose();


    protected:
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

    class TriangleScene: public Scene{
    public:
        explicit TriangleScene(int w = 800, int h = 600, int extraSize = 0)
                : Scene(w, h), m_extraSize(extraSize)
        {}

        void Draw() override;

    protected:
        int m_extraSize;
    };

    class LearnOpenGLScene_1: public TriangleScene{
    public:
        explicit LearnOpenGLScene_1(int w = 800, int h = 600, int extraSize = 0)
            : TriangleScene(w, h, extraSize)
        {}

        void SetRenderData() override;
        void Draw() override;
    private:
        unsigned int m_VAO;
        unsigned int m_VBO;
    };

    class LearnOpenGLScene_BlinnPhong : public TriangleScene{
    public:
        explicit LearnOpenGLScene_BlinnPhong(int w = 800, int h = 600, int extraSize = 0)
            : TriangleScene(w, h, extraSize)
        {}

        void SetRenderData() override;
        void Draw() override;
    private:
        unsigned int m_VAO;
        unsigned int m_VBO;
    };



}



#endif //CHENHUI_SCENE_H
