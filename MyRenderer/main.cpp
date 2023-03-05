//
// Created by 王晨辉 on 2023/2/24.
//

#include <iostream>
#include <cmath>
#include "Vec3.h"
#include "Ray.h"

int main() {


    // Image
    const float aspect_ratio = 16.0 / 9.0;
    const int image_width = 400;
    const int image_height = static_cast<int>(image_width / aspect_ratio);

    // Camera
    float viewport_height = 2.0;
    float viewport_width = aspect_ratio * viewport_height;
    float focal_length = 1.0;

    vec3 origin = vec3(0, 0, 0);
    vec3 horizontal = vec3(viewport_width, 0, 0);
    vec3 vertical = vec3(0, viewport_height, 0);

    // Render
    FILE *fp = fopen("binary.ppm", "wb");
    (void) fprintf(fp, "P6\n%d %d\n255\n", image_width, image_height);
    for (int k = 0; k < image_height * image_width; ++k) {
        int i = k % image_width;
        int j = k / image_width;

        float l = -viewport_width / 2;
        float r = -l;
        float b = -viewport_height / 2;
        float t = -b;
        float px = l + (r - l) / image_width * (i + 0.5);
        float py = b + (t - b) / image_height * (j + 0.5);

        Ray r1(vec3(0, 0, 0), vec3(0, 0, -focal_length) + px * horizontal + py * vertical);

        auto ray_color = [](Ray r){
            float t = 0.5f * (unit_vec(r.direction()).y() + 1.0f);
            return (1.0f - t) * vec3(1.0, 1.0, 1.0) + t * vec3(0.5, 0.7, 1.0);
        };
        vec3 pixel_color = ray_color(r1);
        static unsigned char color[3];
        color[0] = (unsigned char) (pixel_color.x() * 255);
        color[1] = (unsigned char) (pixel_color.y() * 255);
        color[2] = (unsigned char) (pixel_color.z() * 255);
        fwrite(color, 1, 3, fp);
    }
    fclose(fp);
}