//
// Created by 王晨辉 on 2023/3/12.
//


#include <iostream>
#include <cmath>
#include "../Vec3.h"
#include "../Ray.h"
#include "../Geometry.h"
#include <spdlog/spdlog.h>
#include "../Camera.h"
#include "../Utils.h"
#include "../Light.h"

#define INF 1e9


vec3 ray_color(SurfaceList &world, Ray r, const std::vector<Light> &light_list, int depth) {
    // boundary condition
    if (depth == 0) return vec3(0);

    Intersection inter1;
    vec3 color(0, 0, 0);
    if (world.getIntersect(r, 0.f, INF, inter1)) {
        auto p = inter1.point;
        auto mtl = inter1.mtl;
        assert(mtl != nullptr);
        // ambient shading
        mtl->AmbientLight(0.2, color);

        // rays to light
        for (auto light: light_list) {
            auto light_ray = Ray(p, light.pos - p);
            Intersection inter2;
            float ksi = 1e-6;
            if (world.getIntersect(light_ray, ksi, INF, inter2)) {
                // light cannot arrive at obj
            } else {
                mtl->SimpleDirectLight(r, inter1, light, color);
            }
        }
        // rays to bounce
        Ray out;
        if(mtl->SimpleIndirectLight(r, inter1, out)){
            auto temp = ray_color(world, out, light_list, depth-1);
            color += vec3(mtl->albedo.x() * temp.x(),
                          mtl->albedo.y() * temp.y(),
                          mtl->albedo.z() * temp.z());
        }
    } else {
        // background color
        return vec3(0.847, 0.914, 0.996);
    }
    return clamp(color, 0, 1);
}


int main() {
    spdlog::set_level(spdlog::level::info);

    // Image
    const float aspect_ratio = 16.0 / 9.0;
    const int image_width = 400;
    const int image_height = static_cast<int>(image_width / aspect_ratio);
    const int spp = 16;

    // Camera
    float viewport_height = 2.0;
    float viewport_width = aspect_ratio * viewport_height;
    Camera camera;

    // World
    auto mtl1 = make_shared<BlinnPhongMtl>(BlinnPhongMtl(vec3(1, 0, 0),
                                                         vec3(1, 0, 0),
                                                         vec3(1, 0, 0),
                                                         vec3(0.8, 0.6, 0.2),
                                                         10));
    auto mtl2 = make_shared<BlinnPhongMtl>(BlinnPhongMtl(vec3(0, 1, 0),
                                                         vec3(0, 1, 0),
                                                         vec3(0, 1, 0),
                                                         vec3(0),
                                                         1000));
    auto mtl3 = make_shared<BlinnPhongMtl>(BlinnPhongMtl(vec3(0.25, 0.25, 0.25),
                                                         vec3(0.25, 0.25, 0.25),
                                                         vec3(0.25, 0.25, 0.25),
                                                         vec3(0.5),
                                                         1000));
    SurfaceList world(nullptr);
    world.add(std::make_shared<Circle>(Circle(mtl1, vec3(0.42, -0.08, -1.5), 0.4)));
    world.add(std::make_shared<Circle>(Circle(mtl2, vec3(-0.35, -0.1, -1.7), 0.35)));
    world.add(std::make_shared<Circle>(Circle(mtl3, vec3(0, -100.5, -1), 100)));

    // light
    std::vector<Light> light_list;
    light_list.emplace_back(vec3(-4, 4, -3), 0.2f);
    light_list.emplace_back(vec3(4, 4, -3), 0.5f);
    light_list.emplace_back(vec3(0, 6, 1), 0.7f);


    // Render
    FILE *fp = fopen("MaterialClassTest.ppm", "wb");
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
                pixel_color += ray_color(world, r1, light_list, 16);
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

