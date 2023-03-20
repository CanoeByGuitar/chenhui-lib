#include <iostream>
#include <Renderer/Scene.h>
#include <vector>
#include <string>
using namespace std;

vector<string> createPathToDir(const std::string& dir){
    size_t temp = 1;
    vector<string> ans;
    while(dir.find("/", temp) != dir.npos){
        temp = dir.find("/", temp) + 1;
        std::string s = dir.substr(0, temp);
        ans.push_back(s);
    }
    if(dir.back() != '/') ans.push_back(dir);
    return ans;
}

template <class T>
void print_vector(const vector<T> vec){
    for(auto item : vec){
        cout << item << endl;
    }
}



int main(){
//    spdlog::set_level(spdlog::level::debug);
//
//    // init
//    Renderer::Scene scene(800, 600);
//
//    // add model
//    std::vector<float> vec = {-0.5f, -0.5f, -1.0f, // left
//                               0.5f, 0.5f, -1.0f, // right
//                               0.5f,  -0.5f, -1.0f};  // top
//    float *particles = vec.data();
//    int particleNum = 3;
//#ifdef __APPLE__
//    Renderer::Particles model(particles, particleNum,
//                              "/Volumes/disk2/ChenhuiLib/resources/shader/particle.vert",
//                              "/Volumes/disk2/ChenhuiLib/resources/shader/particle.frag");
//#else
//    Renderer::Particles model(particles, particleNum,
//                              "/home/wch/github/chenhui-lib/resources/shader/particle.vert",
//                              "/home/wch/github/chenhui-lib/resources/shader/particle.frag");
//#endif
//
//    scene.AddModel(&model);
//
//    // draw
//    int frame = 0;
//    while(!scene.ShouldWindowClose()){
//        scene.Draw();
////        spdlog::debug("frame{}", frame);
//        frame++;
//    }

    auto vec = createPathToDir("path/to/dir/");
    print_vector(vec);

}
