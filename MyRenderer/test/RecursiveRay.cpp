//
// Created by 王晨辉 on 2023/3/12.
//

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

#include "../Light.h"

vec3 ray_color(SurfaceList &world, Ray r, const std::vector<Light> &light_list, int pow_num, int depth) {
    // boundary condition
    if(depth == 0) return vec3(0);

    Intersection inter1;
    vec3 color(0, 0, 0);
    if (world.getIntersect(r, 0.f, INF, inter1)) {
        auto p = inter1.point;
        auto n = inter1.normal;
        auto v = -r.direction();
        auto k_d = inter1.m->k_d;
        auto k_s = inter1.m->k_s;
        auto k_a = inter1.m->k_a;
        auto k_m = inter1.m->k_m;
        // ambient shading
        float I_a = 0.2;
        color += k_a * I_a;

        // rays to light
        for (auto light: light_list) {
            auto light_ray = Ray(p, light.pos - p);
            auto l = light_ray.direction();
            auto h = unit_vec((v + l));
            Intersection inter2;
            float ksi = 1e-6;
            if (world.getIntersect(light_ray, ksi, INF, inter2)) {
                // light cannot arrive at obj
            } else {
                auto I = light.intensity;
                color += k_d * max(n * l, 0.f) * I + k_s * I * pow(max(0.f, n * h), pow_num);
            }
        }

        // rays to bounce
        if(k_m != vec3(0)){
            auto b = Ray(p, -v + 2 * (n * v) * n);
            if(depth > 0){
                color += k_m.x() * ray_color(world, b, light_list, pow_num, depth - 1);
            }
        }


    }else{
        // background color
        return vec3(0.847, 0.914, 0.996);
    }
    return clamp(color, 0, 1);
}


int main() {
    spdlog::set_level(spdlog::level::info);

    // Image
    const float aspect_ratio = 16.0 / 9.0;
    const int image_width = 600;
    const int image_height = static_cast<int>(image_width / aspect_ratio);
    const int spp = 32;

    // Camera
    float viewport_height = 2.0;
    float viewport_width = aspect_ratio * viewport_height;
    Camera camera;

    // World
    auto *m1 = new Material(vec3(1, 0, 0), vec3(1, 0, 0), vec3(1, 0, 0));
    auto *m2 = new Material(vec3(0, 1, 0), vec3(0, 1, 0), vec3(0, 1, 0));
    auto *m3 = new Material(vec3(0.25, 0.25, 0.25),
                            vec3(0.25, 0.25, 0.25),
                            vec3(0.25, 0.25, 0.25),
                            vec3(0.2));
    SurfaceList world(nullptr);
    world.add(std::make_shared<Circle>(Circle(m1, vec3(0.42, -0.08, -1.5), 0.4)));
    world.add(std::make_shared<Circle>(Circle(m2, vec3(-0.35, -0.1, -1.7), 0.35)));
    world.add(std::make_shared<Circle>(Circle(m3, vec3(0, -100.5, -1), 100)));

    // light
    std::vector<Light> light_list;
    light_list.emplace_back(vec3(-4, 4, -3), 0.2f);
    light_list.emplace_back(vec3(4, 4, -3), 0.5f);
    light_list.emplace_back(vec3(0, 6, -1), 0.7f);


    // Render
    FILE *fp = fopen("RecursiveRayTest2.ppm", "wb");
    (void) fprintf(fp, "P6\n%d %d\n255\n", image_width, image_height);


    for (int i = image_height - 1; i >= 0; i--) {
        for (int j = 0; j < image_width; j++) {
            vec3 pixel_color(0);
            for (int k = 0; k < spp; k++) {
                float l = -viewport_width / 2;
                float r = -l;
                float b = -viewport_height / 2;
                float t = -b;
                float px = l + (r - l) / image_width * (j + random_double());
                float py = b + (t - b) / image_height * (i + random_double());
                Ray r1 = camera.getRay(px, py);
                pixel_color += ray_color(world, r1, light_list, 1000, 32);
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

