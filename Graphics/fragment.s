#version 330 core

out vec4 FragColor;
in vec3 ourColor;

//uniform float green;

void main()
{
    //FragColor = vec4(0.2f, green, 0.5f, 1.0f);
    FragColor = vec4(ourColor, 1.0f);
}
