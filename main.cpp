#include <iostream>
#include <Renderer/Scene.h>
#include <vector>
#include <string>
using namespace std;



int main(){
    spdlog::set_level(spdlog::level::debug);

    // init
    Renderer::Scene scene(800, 600);

    // add model
    std::vector<float> vec = {-0.5f, -0.5f, -1.0f, // left
                               0.5f, 0.5f, -1.0f, // right
                               0.5f,  -0.5f, -1.0f};  // top
    float *particles = vec.data();
    int particleNum = 3;
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
