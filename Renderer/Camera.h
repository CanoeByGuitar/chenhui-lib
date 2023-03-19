//
// Created by 王晨辉 on 2023/1/29.
//

#ifndef CHENHUI_CAMERA_H
#define CHENHUI_CAMERA_H


#include <glad/glad.h>
#include <glm.hpp>
#include <gtc/matrix_transform.hpp>
#include <spdlog/spdlog.h>
namespace Renderer{
    enum CameraMovement {
        FORWARD,
        BACKWARD,
        LEFT,
        RIGHT
    };

    const float YAW         = -90.0f;
    const float PITCH       =  0.0f;
    const float SPEED       =  2.5f;
    const float SENSITIVITY =  0.1f;
    const float ZOOM        =  45.0f;

    class Camera{
    public:
        // m_camera Attributes
        glm::vec3 Position;
        glm::vec3 Front; // where m_camera looks at
        glm::vec3 Up;
        glm::vec3 Right;
        glm::vec3 WorldUp;
        // euler Angles
        float Yaw;
        float Pitch;
        // m_camera options
        float MovementSpeed;
        float MouseSensitivity;
        float Zoom;

        Camera(glm::vec3 position = glm::vec3(0.5f, 0.5f, -1.0f), glm::vec3 up = glm::vec3(0.0f, 1.0f, 0.0f), float yaw = YAW, float pitch = PITCH) : Front(glm::vec3(0.0f, 0.0f, 1.0f)), MovementSpeed(SPEED), MouseSensitivity(SENSITIVITY), Zoom(ZOOM)
        {
            Position = position;
            WorldUp = up;
            Yaw = yaw;
            Pitch = pitch;
            UpdateCameraVectors();
        }

        Camera(float posX, float posY, float posZ, float upX, float upY, float upZ, float yaw, float pitch) : Front(glm::vec3(0.0f, 0.0f, -1.0f)), MovementSpeed(SPEED), MouseSensitivity(SENSITIVITY), Zoom(ZOOM)
        {
            Position = glm::vec3(posX, posY, posZ);
            WorldUp = glm::vec3(upX, upY, upZ);
            Yaw = yaw;
            Pitch = pitch;
            UpdateCameraVectors();
        }

        glm::mat4 GetViewMatrix(){
            return glm::lookAt(Position, Position + Front, Up);
        }

        void ProcessOnKeyboard(CameraMovement direction, float dt){
            float dx = MovementSpeed * dt;
            if(direction == FORWARD) Position += Front * dx;
            if(direction == BACKWARD) Position -= Front * dx;
            if(direction == LEFT) Position -= Right * dx;
            if(direction == RIGHT) Position += Right * dx;
        }

        void ProcessOnMouseMove(float x_offset, float y_offset, GLboolean constrainPitch = true){
            x_offset *= MouseSensitivity;
            y_offset *= MouseSensitivity;
            Yaw += x_offset;
            Pitch += y_offset;

            // not flipped
            if(constrainPitch){
                if(Pitch > 89.0f) Pitch = 89.0f;
                if(Pitch < -89.0) Pitch = -89.0f;
            }
            UpdateCameraVectors();
        }

        void ProcessOnMouseScroll(float y_offset){
            Zoom -= (float) y_offset;
        }

    private:
        void UpdateCameraVectors(){
            glm::vec3 front(cos(glm::radians(Yaw)) * cos(glm::radians(Pitch)),
                            sin(glm::radians(Pitch)),
                            sin(glm::radians(Yaw)) * cos(glm::radians(Pitch)));
            Front = glm::normalize(front);
            Right = glm::normalize(glm::cross(Front, WorldUp));
            Up    = glm::normalize(glm::cross(Right, Front));
        }
    };

}

#endif //CHENHUI_CAMERA_H
