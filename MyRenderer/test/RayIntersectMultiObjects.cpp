//
// Created by 王晨辉 on 2023/3/10.
//

//
// Created by 王晨辉 on 2023/3/10.
//

#include <iostream>
#include <cmath>
#include "../Vec3.h"
#include "../Ray.h"
#include "../Geometry.h"
#include <spdlog/spdlog.h>

using std::shared_ptr;
using std::make_shared;

int main() {
    spdlog::set_level(spdlog::level::info);

    // Image
    const float aspect_ratio = 16.0 / 9.0;
    const int image_width = 400;
    const int image_height = static_cast<int>(image_width / aspect_ratio);

    // multi objects
    SurfaceList world(nullptr);
    world.add(std::make_shared<Circle>(Circle(nullptr, vec3(0, 0, -1), 0.5)));
    world.add(std::make_shared<Circle>(Circle(nullptr, vec3(0, -100.5, -1), 100)));


    // Camera
    float viewport_height = 2.0;
    float viewport_width = aspect_ratio * viewport_height;
    float focal_length = 1.0;

    vec3 origin = vec3(0, 0, 0);
    vec3 horizontal = unit_vec(vec3(viewport_width, 0, 0));
    vec3 vertical = unit_vec(vec3(0, viewport_height, 0));

    // Render
    FILE *fp = fopen("RayMultiCircle.ppm", "wb");
    (void) fprintf(fp, "P6\n%d %d\n255\n", image_width, image_height);

    for(int i = image_height - 1; i >= 0; i--){
        for(int j = 0; j < image_width; j++){
            float l = -viewport_width / 2;
            float r = -l;
            float b = -viewport_height / 2;
            float t = -b;
            float px = l + (r - l) / image_width * (j + 0.5);
            float py = b + (t - b) / image_height * (i + 0.5);

            Ray r1(origin, vec3(0, 0, -focal_length) + px * horizontal + py * vertical);


            auto ray_color = [&world, &i, &j](Ray r){
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
            };

            vec3 pixel_color = ray_color(r1);
            static unsigned char color[3];
            color[0] = (unsigned char) (pixel_color.x() * 255);
            color[1] = (unsigned char) (pixel_color.y() * 255);
            color[2] = (unsigned char) (pixel_color.z() * 255);
            fwrite(color, 1, 3, fp);
        }
    }
    fclose(fp);
}
