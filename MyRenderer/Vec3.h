//
// Created by 王晨辉 on 2023/3/2.
//

#ifndef CHENHUI_VEC3_H
#define CHENHUI_VEC3_H

#include <cmath>
#include <iostream>


class vec3 {
public:
    vec3():m_x(0.0f), m_y(0.0f), m_z(0.0f) {}

    explicit vec3(float e) : m_x(e), m_y(e), m_z(e) {}

    vec3(float x, float y, float z) : m_x(x), m_y(y), m_z(z) {}

    float x() const { return m_x; }

    float y() const { return m_y; }

    float z() const { return m_z; }

    vec3 &operator+=(const vec3 &a) {
        m_x += a.m_x;
        m_y += a.m_y;
        m_z += a.m_z;
        return *this;
    }

    vec3 &operator*=(float t) {
        m_x *= t;
        m_y *= t;
        m_z *= t;
        return *this;
    }

    vec3 operator-() const{
        return vec3(-m_x, -m_y, -m_z);
    }


    float norm() const {return sqrt(m_x * m_x + m_y * m_y + m_z * m_z);}
    float norm_squared() const {return m_x * m_x + m_y * m_y + m_z * m_z;}


private:
    float m_x, m_y, m_z;

};

inline std::ostream& operator << (std::ostream &os, const vec3 &a){
    return os << "vec3:  " << a.x() << " " << a.y()<< " " << a.z() << std::endl;
}

inline vec3 operator+(const vec3 &a, const vec3 &b) { return vec3(a.x() + b.x(), a.y() + b.y(), a.z() + b.z()); }

inline vec3 operator-(const vec3 &a, const vec3 &b) { return vec3(a.x() - b.x(), a.y() - b.y(), a.z() - b.z()); }

inline float operator*(const vec3 &a, const vec3 &b) { return a.x() * b.x() + a.y() * b.y() + a.z() * b.z(); }
inline vec3 operator*(const vec3 &a, float t) { return vec3(a.x() * t , a.y() * t , a.z() * t); }
inline vec3 operator*(float t, const vec3 &a) { return vec3(a.x() * t , a.y() * t , a.z() * t); }

inline vec3 operator/(const vec3 &a, float t) { return vec3(a.x() / t , a.y() / t , a.z() / t); }

inline vec3 unit_vec(const vec3 &a){return a / a.norm();}

inline vec3 cross(const vec3 &a, const vec3 &b){
    return vec3(a.y() * b.z() - a.z() * b.y(),
                a.z() * b.x() - a.x() * b.z(),
                a.x() * b.y() - a.y() * b.x());
}
#endif //CHENHUI_VEC3_H
