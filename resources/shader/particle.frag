#version 330 core
out vec4 FragColor;

in float ourID;

void main()
{
    float eps = 1e-5;
    if(abs(ourID - 0) < eps){
        FragColor =  vec4(1.0f, 0.0f, 0.0f, 1.0f);
    }else if(abs(ourID - 1) < eps){
        FragColor =  vec4(0.0f, 1.0f, 0.0f, 1.0f);
    }else if(abs(ourID - 2) < eps){
        FragColor =  vec4(0.0f, 0.0f, 1.0f, 1.0f);
    }

}