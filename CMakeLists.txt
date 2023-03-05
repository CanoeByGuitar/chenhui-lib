######################################################################
cmake_minimum_required(VERSION 3.5 FATAL_ERROR)
project(chenhui LANGUAGES C CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/build/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/build/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/build/bin)

######################################################################
if(CMAKE_SYSTEM_NAME STREQUAL "Linux")
    message(STATUS "Configuring on/for Linux")
    if (POLICY CMP0072)
        set(OpenGL_GL_PREFERENCE GLVND)
    endif()

elseif(CMAKE_SYSTEM_NAME STREQUAL "Darwin")
    message(STATUS "Configuring on/for macOS")
    set(GLEW_H /Users/wangchenhui/brew-2.2.2/Cellar/glew/2.2.0_1/include/GL)
    set(GLFW_H /Users/wangchenhui/brew-2.2.2/Cellar/glfw/3.3.7/include/GLFW)
    set(GLEW_LINK /Users/wangchenhui/brew-2.2.2/Cellar/glew/2.2.0_1/lib/libGLEW.2.2.dylib)
    set(GLFW_LINK /Users/wangchenhui/brew-2.2.2/Cellar/glfw/3.3.7/lib/libglfw.3.3.dylib)
    set(OPENGL_LIBRARY ${OPENGL})
    include_directories(${GLEW_H} ${GLFW_H})
elseif(CMAKE_SYSTEM_NAME STREQUAL "Windows")
    message(STATUS "Configuring on/for Windows")
else()
    message(STATUS "Configuring on/for ${CMAKE_SYSTEM_NAME}")
endif()


find_package(OpenGL REQUIRED)



include_directories(
        ${PROJECT_SOURCE_DIR}/external
        ${PROJECT_SOURCE_DIR}/external/glad/include/
        ${PROJECT_SOURCE_DIR}/external/glm
        ${PROJECT_SOURCE_DIR}/external/glfw/include/GLFW
        ${PROJECT_SOURCE_DIR}/external/spdlog/include)


add_subdirectory(${PROJECT_SOURCE_DIR}/external/eigen)
add_subdirectory(${PROJECT_SOURCE_DIR}/external/spdlog)
add_subdirectory(${PROJECT_SOURCE_DIR}/external/glm)
add_subdirectory(${PROJECT_SOURCE_DIR}/external/glfw)

add_subdirectory(${PROJECT_SOURCE_DIR}/Renderer)
add_subdirectory(${PROJECT_SOURCE_DIR}/Physics)
add_subdirectory(${PROJECT_SOURCE_DIR}/Math)

add_executable(main main.cpp)
target_link_libraries(main PRIVATE eigen spdlog::spdlog renderer math physics)

add_executable(testeigen testEigen.cpp)
target_link_libraries(main PRIVATE eigen spdlog::spdlog renderer math physics)
#######################################
# speed up eigen
#include(CheckCXXCompilerFlag)
#check_cxx_compiler_flag("-march=native" _march_native_works)
#check_cxx_compiler_flag("-xHost" _xhost_works)
#set(_CXX_FLAGS)
#if(_march_native_works)
#    message(STATUS "Using processor's vector instructions (-march=native compiler flag set)")
#    set(_CXX_FLAGS "-march=native")
#elseif(_xhost_works)
#    message(STATUS "Using processor's vector instructions (-xHost compiler flag set)")
#    set(_CXX_FLAGS "-xHost")
#else()
#    message(STATUS "No suitable compiler flag found for vectorization")
#endif()
#target_compile_options(main PRIVATE ${_CXX_FLAGS})

