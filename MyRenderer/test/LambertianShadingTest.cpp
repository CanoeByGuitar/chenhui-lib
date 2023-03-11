//
// Created by 王晨辉 on 2023/3/11.
//


#include <iostream>
#include <cmath>
#include "../Vec3.h"
#include "../Ray.h"
#include "../Geometry.h"
#include <spdlog/spdlog.h>
#include "../Camera.h"
#include "../Utils.h"
#define INF 1e9

// light
struct Light{
    vec3 pos;
    float intensity;
    Light(const vec3& pos, float i):pos(pos),intensity(i){}
};

vec3 ray_color(SurfaceList &world, Ray r, Light light){
    Intersection inter1;
    vec3 color(0, 0, 0);
    if(world.getIntersect(r, 0.f, INF, inter1)){
        auto p = inter1.point;
        auto n = inter1.normal;
        auto light_ray = Ray(p, light.pos - p);
        auto l = light_ray.direction();
        auto k_d = inter1.m->k_d;
        Intersection inter2;
        if(world.getIntersect(light_ray, 0.f, INF, inter2)){
            // light cannot arrive at obj
        }else{
            auto I = light.intensity;
            color = k_d * max(n * l, 0.f) * I;
        }
    }
    return color;
}


int main() {
    spdlog::set_level(spdlog::level::info);

    // Image
    const float aspect_ratio = 16.0 / 9.0;
    const int image_width = 400;
    const int image_height = static_cast<int>(image_width / aspect_ratio);
    const int spp = 32;

    // Camera
    float viewport_height = 2.0;
    float viewport_width = aspect_ratio * viewport_height;
    Camera camera;

    // World
    Material *m = new Material(vec3(0.7, 0.7, 0.7), vec3(), vec3());
    SurfaceList world(nullptr);
    world.add(std::make_shared<Circle>(Circle(m, vec3(0, 0, -1), 0.5)));
    world.add(std::make_shared<Circle>(Circle(m, vec3(0, -100.5, -1), 100)));

    // light
    vec3 light_pos(0,4,-2);
    float intensity = 1.f;
    Light light(light_pos, intensity);


    // Render
    FILE *fp = fopen("LambertianTest.ppm", "wb");
    (void) fprintf(fp, "P6\n%d %d\n255\n", image_width, image_height);




    for(int i = image_height - 1; i >= 0; i--){
        for(int j = 0; j < image_width; j++){
            vec3 pixel_color(0);
            for(int k = 0; k < spp; k++){
                float l = -viewport_width / 2;
                float r = -l;
                float b = -viewport_height / 2;
                float t = -b;
                float px = l + (r - l) / image_width * (j + random_double());
                float py = b + (t - b) / image_height * (i + random_double());
                Ray r1 = camera.getRay(px, py);
                pixel_color += ray_color(world, r1, light);
            }

            static unsigned char color[3];
            color[0] = (unsigned char) (pixel_color.x() * 255 / spp);
            color[1] = (unsigned char) (pixel_color.y() * 255 / spp);
            color[2] = (unsigned char) (pixel_color.z() * 255 / spp);
            fwrite(color, 1, 3, fp);
        }
    }
    fclose(fp);
}