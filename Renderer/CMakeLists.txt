add_library(renderer ""  )
target_sources(renderer
        PRIVATE
        Texture.cpp
        Buffer/FrameBuffer.cpp
        Buffer/VertexBuffer.cpp
        Buffer/IndexBuffer.cpp
        Buffer/VertexArray.cpp
        Scene.cpp
        glad.c
        Particle.cpp
        PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/Camera.h
        ${CMAKE_CURRENT_SOURCE_DIR}/Texture.h
        ${CMAKE_CURRENT_SOURCE_DIR}/RenderConfig.h
        ${CMAKE_CURRENT_SOURCE_DIR}/Buffer/IBuffer.h
        ${CMAKE_CURRENT_SOURCE_DIR}/Buffer/FrameBuffer.h
        ${CMAKE_CURRENT_SOURCE_DIR}/Buffer/VertexBuffer.h
        ${CMAKE_CURRENT_SOURCE_DIR}/Buffer/IndexBuffer.h
        ${CMAKE_CURRENT_SOURCE_DIR}/Buffer/VertexArray.h
        ${CMAKE_CURRENT_SOURCE_DIR}/Scene.h
        ${CMAKE_CURRENT_SOURCE_DIR}/Shader.h
        ${CMAKE_CURRENT_SOURCE_DIR}/Particle.h
        )

if(APPLE)
    set(GLEW_LINK /Users/wangchenhui/brew-2.2.2/Cellar/glew/2.2.0_1/lib/libGLEW.2.2.dylib)
    set(GLFW_LINK /Users/wangchenhui/brew-2.2.2/Cellar/glfw/3.3.7/lib/libglfw.3.dylib)
    target_link_libraries(renderer ${OPENGL} ${GLEW_LINK} ${GLFW_LINK} glm spdlog::spdlog)
ELSEIF (UNIX)
    target_link_libraries(renderer glfw ${OPENGL_LIBRARY} glm)
ENDIF ()