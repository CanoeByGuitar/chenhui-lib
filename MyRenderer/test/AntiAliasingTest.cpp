//
// Created by 王晨辉 on 2023/3/10.
//


#include <iostream>
#include <cmath>
#include "../Vec3.h"
#include "../Ray.h"
#include "../Geometry.h"
#include <spdlog/spdlog.h>
#include "../Camera.h"
#include "../Utils.h"


vec3 ray_color(SurfaceList world, int i, int j, Ray r){
    Intersection inter;
    if(world.getIntersect(r,0, 1e9, inter)){
        spdlog::info("True.  index:({},{})", i, j);
        // normal (x,y,z) all in [-1,1] ==> map to [0,1]
        return 0.5 * inter.normal + vec3(0.5);
    }else{
//                spdlog::info("False.  Ray:({},{},{})", unit_vec(r.direction()).x()
//                        ,unit_vec(r.direction()).y(),unit_vec(r.direction()).z());
        return vec3(1, 1, 1);
    }
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
    SurfaceList world(nullptr);
    world.add(std::make_shared<Circle>(Circle(nullptr, vec3(0, 0, -1), 0.5)));
    world.add(std::make_shared<Circle>(Circle(nullptr, vec3(0, -100.5, -1), 100)));



    // Render
    FILE *fp = fopen("AntiAliasing.ppm", "wb");
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
                pixel_color += ray_color(world, i, j, r1);
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