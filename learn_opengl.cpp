//
// Created by 王晨辉 on 2023/3/10.
//

#include <iostream>
#include <Renderer/Scene.h>

int main(){
    spdlog::set_level(spdlog::level::debug);

    // init
    Renderer::Scene scene(800, 600);

    // add model
    float particles[] = {
            -0.5f, -0.5f, -0.5f,
            0.5f, -0.5f, -0.5f,
            0.5f,  0.5f, -0.5f,
            0.5f,  0.5f, -0.5f,
            -0.5f,  0.5f, -0.5f,
            -0.5f, -0.5f, -0.5f,

            -0.5f, -0.5f,  0.5f,
            0.5f, -0.5f,  0.5f,
            0.5f,  0.5f,  0.5f,
            0.5f,  0.5f,  0.5f,
            -0.5f,  0.5f,  0.5f,
            -0.5f, -0.5f,  0.5f,

            -0.5f,  0.5f,  0.5f,
            -0.5f,  0.5f, -0.5f,
            -0.5f, -0.5f, -0.5f,
            -0.5f, -0.5f, -0.5f,
            -0.5f, -0.5f,  0.5f,
            -0.5f,  0.5f,  0.5f,

            0.5f,  0.5f,  0.5f,
            0.5f,  0.5f, -0.5f,
            0.5f, -0.5f, -0.5f,
            0.5f, -0.5f, -0.5f,
            0.5f, -0.5f,  0.5f,
            0.5f,  0.5f,  0.5f,

            -0.5f, -0.5f, -0.5f,
            0.5f, -0.5f, -0.5f,
            0.5f, -0.5f,  0.5f,
            0.5f, -0.5f,  0.5f,
            -0.5f, -0.5f,  0.5f,
            -0.5f, -0.5f, -0.5f,

            -0.5f,  0.5f, -0.5f,
            0.5f,  0.5f, -0.5f,
            0.5f,  0.5f,  0.5f,
            0.5f,  0.5f,  0.5f,
            -0.5f,  0.5f,  0.5f,
            -0.5f,  0.5f, -0.5f,
    };
    int particleNum = sizeof(particles) / sizeof(particles[0]) / 3;
#ifdef __APPLE__
    Renderer::Particles model(particles, particleNum,
                              "/Volumes/disk2/ChenhuiLib/resources/shader/particle.vert",
                              "/Volumes/disk2/ChenhuiLib/resources/shader/particle.frag");
#else
    Renderer::Particles model(particles, particleNum,
                              "/home/wch/github/chenhui-lib/resources/shader/particle.vert",
                              "/home/wch/github/chenhui-lib/resources/shader/particle.frag");
#endif

    scene.AddModel(&model);

    // draw
    int frame = 0;
    while(!scene.ShouldWindowClose()){
        scene.Draw();
//        spdlog::debug("frame{}", frame);
        frame++;
    }



}
