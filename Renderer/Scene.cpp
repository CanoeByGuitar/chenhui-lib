//
// Created by 王晨辉 on 2023/2/14.
//

#include "Scene.h"


namespace Renderer {
    Camera *m_cameraPointer = nullptr; // 用来让static函数访问非static成员变量
    float lastX;
    float lastY;
    bool firstMouse = true;


    Scene::Scene(int w, int h) {
        m_w = w;
        m_h = h;
        m_paused = false;
        m_cameraPointer = &m_camera;
        lastX = ((float)w * 0.5f);
        lastY = ((float)h * 0.5f);
        Init();
    }

    void Scene::Init() {
        glfwInit();
        glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
        glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
        glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

#ifdef __APPLE__
        glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif
        m_window = glfwCreateWindow(m_w, m_h, "ChenhuiLib", NULL, NULL);
        if (m_window == NULL) {
            spdlog::info("Failed to create GLFW window");
            glfwTerminate();
        }
        glfwMakeContextCurrent(m_window);
        glfwSetFramebufferSizeCallback(m_window, FrameBufferSizeCallback);
        glfwSetCursorPosCallback(m_window, MouseCallBack);
        glfwSetScrollCallback(m_window, ScrollCallback);

        if (!gladLoadGLLoader((GLADloadproc) glfwGetProcAddress)) {
            spdlog::info("Failed to initialize GLAD");
        }



    }

    void Scene::AddModel(Particles *particles) {
        m_particleModel = particles;
    }


    void Scene::Draw() {
        // TODO: should generate and bind VAO and VBO before the rendering loop
        m_currentFrame = static_cast<float>(glfwGetTime());
        m_dt = m_currentFrame - m_lastFrame;
        m_lastFrame = m_currentFrame;
        ProcessInput();

        glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        // shader
        auto shader = m_particleModel->getShader();
        shader->use();

        glm::mat4 model = glm::mat4(1.0f);
        glm::rotate(model, glm::radians(-55.0f), glm::vec3(1.0f, 0.0f, 0.0f));
        glm::mat4 view = m_camera.GetViewMatrix();
        view = glm::translate(view, glm::vec3(0.0f, 0.0f, -3.0f));

        glm::mat4 projection = glm::perspective(glm::radians(60.0f), (float) m_w / (float) m_h, 0.1f, 100.0f);

        shader->setMat4("model", model);
        shader->setMat4("view", view);
        shader->setMat4("projection", projection);


        unsigned int VBO, VAO;
        glGenVertexArrays(1, &VAO);
        glGenBuffers(1, &VBO);
        glBindVertexArray(VAO);
        glBindBuffer(GL_ARRAY_BUFFER, VBO);
        glBufferData(GL_ARRAY_BUFFER, m_particleModel->getNum() * 4 * sizeof(float), m_particleModel->getData(),
                     GL_STATIC_DRAW);

        // position attribute
        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 4 * sizeof(float),
                              (void *) 0);
        glEnableVertexAttribArray(0);

        // object id attribute
        glVertexAttribPointer(1, 1, GL_FLOAT, GL_FALSE, 4 * sizeof(float),
                              (void *)(3 * sizeof(float)));
        glEnableVertexAttribArray(1);

        glBindBuffer(GL_ARRAY_BUFFER, 0);


        shader->use();

//        glBindVertexArray(1);
            glPointSize(3.0f);
            glDrawArrays(GL_POINTS, 0, m_particleModel->getNum());



        glfwSwapBuffers(m_window);
        glfwPollEvents();
    }

    bool Scene::ShouldWindowClose() {
        return glfwWindowShouldClose(m_window);
    }

    void Scene::FrameBufferSizeCallback(GLFWwindow *window, int width, int height) {
        glViewport(0, 0, width, height);
    }

    void Scene::MouseCallBack(GLFWwindow *window, double xposIn, double yposIn) {
        auto xpos = static_cast<float>(xposIn);
        auto ypos = static_cast<float>(yposIn);
        if (firstMouse) {
            lastX = xpos;
            lastY = ypos;
            firstMouse = false;
        }

        float xoffset = xpos - lastX;
        float yoffset = lastY - ypos; // reversed since y-coordinates go from bottom to top

        lastX = xpos;
        lastY = ypos;

        if (glfwGetMouseButton(window, GLFW_MOUSE_BUTTON_MIDDLE) == GLFW_PRESS) {

            m_cameraPointer->ProcessOnMouseMove(xoffset, yoffset);
            if (glfwGetKey(window, GLFW_KEY_LEFT_SHIFT) == GLFW_PRESS) {
                m_cameraPointer->ProcessOnKeyboard(RIGHT, xoffset * 0.01);
                //m_camera->ProcessKeyboard(, deltaTime);
            } else {

            }
        }
    }

    void Scene::ScrollCallback(GLFWwindow *window, double xoffset, double yoffset) {
        m_cameraPointer->ProcessOnMouseScroll(static_cast<float>(yoffset));
    }

    void Scene::ProcessInput() {
        if (glfwGetKey(m_window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
            glfwSetWindowShouldClose(m_window, true);

        if (glfwGetKey(m_window, GLFW_KEY_Q) == GLFW_PRESS){
            m_paused = true;
            spdlog::info("m_paused{}",m_paused);
        }

        if (glfwGetKey(m_window, GLFW_KEY_E) == GLFW_PRESS){
            m_paused = false;
            spdlog::info("m_paused{}",m_paused);
        }

        if (glfwGetKey(m_window, GLFW_KEY_W) == GLFW_PRESS) {
            m_camera.ProcessOnKeyboard(FORWARD, m_dt);
            auto view = m_camera.GetViewMatrix();
//            spdlog::debug("view matrix:\n {} {} {} {} \n {} {} {} {} \n {} {} {} {} \n {} {} {} {} \n",
//                          view[0][0], view[0][1], view[0][2], view[0][3],
//                          view[1][0], view[1][1], view[1][2], view[1][3],
//                          view[2][0], view[2][1], view[2][2], view[2][3],
//                          view[3][0], view[3][1], view[3][2], view[3][3]);
        }

        if (glfwGetKey(m_window, GLFW_KEY_S) == GLFW_PRESS)
            m_camera.ProcessOnKeyboard(BACKWARD, m_dt);
        if (glfwGetKey(m_window, GLFW_KEY_A) == GLFW_PRESS)
            m_camera.ProcessOnKeyboard(LEFT, m_dt);
        if (glfwGetKey(m_window, GLFW_KEY_D) == GLFW_PRESS)
            m_camera.ProcessOnKeyboard(RIGHT, m_dt);
    }


    void TriangleScene::Draw() {
        m_currentFrame = static_cast<float>(glfwGetTime());
        m_dt = m_currentFrame - m_lastFrame;
        m_lastFrame = m_currentFrame;
        ProcessInput();

        glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        // shader
        auto shader = m_particleModel->getShader();
        shader->use();

        glm::mat4 model = glm::mat4(1.0f);
        glm::rotate(model, glm::radians(-55.0f), glm::vec3(1.0f, 0.0f, 0.0f));
        glm::mat4 view = m_camera.GetViewMatrix();
        view = glm::translate(view, glm::vec3(0.0f, 0.0f, -3.0f));

        glm::mat4 projection = glm::perspective(glm::radians(60.0f), (float) m_w / (float) m_h, 0.1f, 100.0f);

        shader->setMat4("model", model);
        shader->setMat4("view", view);
        shader->setMat4("projection", projection);


        unsigned int VBO, VAO;
        glGenVertexArrays(1, &VAO);
        glGenBuffers(1, &VBO);
        glBindVertexArray(VAO);
        glBindBuffer(GL_ARRAY_BUFFER, VBO);
        glBufferData(GL_ARRAY_BUFFER, m_particleModel->getNum() * (3 + m_extraSize) * sizeof(float), m_particleModel->getData(),
                     GL_STATIC_DRAW);

        // position attribute
        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, (3 + m_extraSize) * sizeof(float),
                              (void *) 0);
        glEnableVertexAttribArray(0);


        glBindBuffer(GL_ARRAY_BUFFER, 0);


        shader->use();

        //        glBindVertexArray(1);
        glDrawArrays(GL_TRIANGLES, 0, m_particleModel->getNum());



        glfwSwapBuffers(m_window);
        glfwPollEvents();
    }
    void LearnOpenGLScene_1::Draw() {
        m_currentFrame = static_cast<float>(glfwGetTime());
        m_dt = m_currentFrame - m_lastFrame;
        m_lastFrame = m_currentFrame;
        ProcessInput();

        glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        // shader
        auto shader = m_particleModel->getShader();
        shader->use();

        glm::mat4 model = glm::mat4(1.0f);
        glm::rotate(model, glm::radians(-55.0f), glm::vec3(1.0f, 0.0f, 0.0f));
        glm::mat4 view = m_camera.GetViewMatrix();
        view = glm::translate(view, glm::vec3(0.0f, 0.0f, -3.0f));

        glm::mat4 projection = glm::perspective(glm::radians(60.0f), (float) m_w / (float) m_h, 0.1f, 100.0f);

        shader->setMat4("model", model);
        shader->setMat4("view", view);
        shader->setMat4("projection", projection);





        shader->use();
        shader->setVec3("objectColor", 1.0f, 0.5f, 0.31f);
        shader->setVec3("lightColor",  1.0f, 1.0f, 1.0f);

        //  render the cube
        glBindVertexArray(m_VAO);
        glDrawArrays(GL_TRIANGLES, 0, m_particleModel->getNum());


        glfwSwapBuffers(m_window);
        glfwPollEvents();
    }
    void LearnOpenGLScene_1::SetRenderData() {
        //Cube VAO and VBO
        unsigned int VBO, cubeVAO;
        glGenVertexArrays(1, &cubeVAO);
        glGenBuffers(1, &VBO);
        m_VAO = cubeVAO;
        m_VBO = VBO;

        glBindBuffer(GL_ARRAY_BUFFER, VBO);
        glBufferData(GL_ARRAY_BUFFER, m_particleModel->getNum() * (3 + m_extraSize) * sizeof(float), m_particleModel->getData(),
                     GL_STATIC_DRAW);

        glBindVertexArray(cubeVAO);

        // position
        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, (3 + m_extraSize) * sizeof(float),
                              (void *) 0);
        glEnableVertexAttribArray(0);

        // lights VAO
        unsigned int lightCubeVAO;
        glGenVertexArrays(1, &lightCubeVAO);
        glBindVertexArray(lightCubeVAO);
        glBindBuffer(GL_ARRAY_BUFFER, VBO);
        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, (3 + m_extraSize) * sizeof(float),
                              (void *) 0);
        glEnableVertexAttribArray(0);
    }
}
void Renderer::LearnOpenGLScene_BlinnPhong::SetRenderData() {
    //Cube VAO and VBO
    unsigned int VBO, cubeVAO;
    glGenVertexArrays(1, &cubeVAO);
    glGenBuffers(1, &VBO);
    m_VAO = cubeVAO;
    m_VBO = VBO;

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, m_particleModel->getNum() * (3 + m_extraSize) * sizeof(float), m_particleModel->getData(),
                 GL_STATIC_DRAW);

    glBindVertexArray(cubeVAO);

    // position
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, (3 + m_extraSize) * sizeof(float),
                          (void *) 0);
    glEnableVertexAttribArray(0);

    // normal
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, (3 + m_extraSize) * sizeof(float),
                          (void *) (3 * sizeof(float)));
    glEnableVertexAttribArray(1);

    // lights VAO
    unsigned int lightCubeVAO;
    glGenVertexArrays(1, &lightCubeVAO);
    glBindVertexArray(lightCubeVAO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, (3 + m_extraSize) * sizeof(float),
                          (void *) (3 * sizeof(float)));
    glEnableVertexAttribArray(0);
}
void Renderer::LearnOpenGLScene_BlinnPhong::Draw() {
    m_currentFrame = static_cast<float>(glfwGetTime());
    m_dt = m_currentFrame - m_lastFrame;
    m_lastFrame = m_currentFrame;
    ProcessInput();

    glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);

    // shader
    auto shader = m_particleModel->getShader();
    shader->use();

    glm::mat4 model = glm::mat4(1.0f);
    glm::rotate(model, glm::radians(-55.0f), glm::vec3(1.0f, 0.0f, 0.0f));
    glm::mat4 view = m_camera.GetViewMatrix();
    view = glm::translate(view, glm::vec3(0.0f, 0.0f, -3.0f));

    glm::mat4 projection = glm::perspective(glm::radians(60.0f), (float) m_w / (float) m_h, 0.1f, 100.0f);

    shader->setMat4("model", model);
    shader->setMat4("view", view);
    shader->setMat4("projection", projection);





    shader->use();
    shader->setVec3("objectColor", 1.0f, 0.5f, 0.31f);
    shader->setVec3("lightColor",  1.0f, 1.0f, 1.0f);

    //  render the cube
    glBindVertexArray(m_VAO);
    glDrawArrays(GL_TRIANGLES, 0, m_particleModel->getNum());


    glfwSwapBuffers(m_window);
    glfwPollEvents();
}
