#include <iostream>
#include <Renderer/Scene.h>

int main(){
    spdlog::set_level(spdlog::level::debug);

    // init
    Renderer::Scene scene(800, 600);

    // add model
    float particles[] = {
            -0.5f, -0.5f, 0.0f, // left
            0.5f, 0.5f, 0.0f, // right
            0.5f,  -0.5f, 0.0f  // top
    };
    int particleNum = sizeof(particles) / sizeof(particles[0]) / 3;
    Renderer::Particles model(particles, particleNum,
                              "/Volumes/disk2/ChenhuiLib/resources/shader/particle.vert",
                              "/Volumes/disk2/ChenhuiLib/resources/shader/particle.frag");
    scene.AddModel(&model);

    // draw
    int frame = 0;
    while(!scene.ShouldWindowClose()){
        scene.Draw();
//        spdlog::debug("frame{}", frame);
        frame++;
    }
}
