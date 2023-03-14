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

SurfaceList random_scene() {
    SurfaceList world(nullptr);

    vec3 ground_color(0.5, 0.5, 0.5);
    auto ground_material = make_shared<BlinnPhongMtl>(BlinnPhongMtl(
            ground_color,ground_color,ground_color,vec3(0),10
            ));
    world.add(make_shared<Circle>(ground_material, vec3(0,-1000,0), 1000));

    for (int a = -11; a < 11; a++) {
        for (int b = -11; b < 11; b++) {
            auto choose_mat = random_double();
            vec3 center(a + 0.9*random_double(), 0.2, b + 0.9*random_double());

            if ((center - vec3(4, 0.2, 0)).norm() > 0.9) {
                shared_ptr<ObjMaterial> sphere_material;

                if (choose_mat < 0.8) {
                    // diffuse
                    auto color = random_vec(0, 1);
                    auto fade_rate = random_double(10, 10000);
                    sphere_material = make_shared<BlinnPhongMtl>(BlinnPhongMtl(
                            color,color,color,vec3(0),fade_rate
                    ));
                    world.add(make_shared<Circle>(sphere_material, center, 0.2));
                } else{
                    // metal
                    auto color = random_vec(0, 1);
                    auto albedo = random_vec(0.5, 1);
                    auto fuzz = random_double(0, 0.5);
                    sphere_material = make_shared<Metal>(Metal(color,
                                                               color,
                                                               color,
                                                               albedo,
                                                               1000,
                                                               fuzz));
                    world.add(make_shared<Circle>(sphere_material, center, 0.2));
                }
            }
        }
    }

    auto mtl1 = make_shared<Metal>(Metal(vec3(0.5, 0.7, 0.2),
                                         vec3(0.5, 0.7, 0.2),
                                         vec3(0.5, 0.7, 0.2),
                                         vec3(0),
                                         1000,
                                         0.9));
    auto mtl2 = make_shared<Metal>(Metal(vec3(0.8, 1, 1),
                                         vec3(0.8, 1, 1),
                                         vec3(0.8, 1, 1),
                                         vec3(0.2),
                                         1000,
                                         0.2));
    auto mtl3 = make_shared<Metal>(Metal(vec3(0.537, 0.608, 0.667),
                                         vec3(0.537, 0.608, 0.667),
                                         vec3(0.537, 0.608, 0.667),
                                         vec3(0.8),
                                         1000,
                                         0));
    world.add(std::make_shared<Circle>(Circle(mtl2, vec3(0, 1, 0), 1.0)));
    world.add(std::make_shared<Circle>(Circle(mtl1, vec3(-4, 1, 0), 1.0)));
    world.add(std::make_shared<Circle>(Circle(mtl3, vec3(4, 1, 0), 1.0)));


    return world;
}

int main() {
    spdlog::set_level(spdlog::level::info);

    // Image
    const float aspect_ratio = 16.0 / 9.0;
    const int image_width = 900;
    const int image_height = static_cast<int>(image_width / aspect_ratio);
    const int spp = 32;

    // Camera
    float vfov = 20;
    auto theta = vfov / 180 * 3.1415;
    auto h = tan(theta / 2);
    float viewport_height = 2.0 * h;
    float viewport_width = aspect_ratio * viewport_height;
    Camera camera(vec3(13, 2, 3),
                  vec3(0, 0, 0),
                  vec3(0, 1, 0),
                  vfov,
                  10);

    // World
    auto world = random_scene();
    // light
    std::vector<Light> light_list;
    light_list.emplace_back(vec3(-4, 4, -3), 0.2f);
    light_list.emplace_back(vec3(4, 4, -3), 0.3f);
    light_list.emplace_back(vec3(0, 6, -1), 0.3f);
    light_list.emplace_back(vec3(11, 4, 4), 0.35f);

    // Render
    FILE *fp = fopen("FinalScene.ppm", "wb");
    (void) fprintf(fp, "P6\n%d %d\n255\n", image_width, image_height);

    for (int i = image_height - 1; i >= 0; i--) {
        for (int j = 0; j < image_width; j++) {
            std::cout << "processing " << image_height - i << " " << j << std::endl;
            vec3 pixel_color(0);
            for (int k = 0; k < spp; k++) {
                float l = -viewport_width / 2;
                float r = -l;
                float b = -viewport_height / 2;
                float t = -b;
                float px = l + (r - l) / image_width * (j + random_double());
                float py = b + (t - b) / image_height * (i + random_double());
                Ray r1 = camera.getRay2(px, py);
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

