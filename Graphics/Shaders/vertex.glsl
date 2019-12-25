#version 460 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTexCoord;

//uniform float rightOffset;

out vec3 ourColor;
out vec2 TextureCoord;

void main()
{
//    gl_Position = vec4(aPos.x + rightOffset, aPos.y, aPos.z, 1.0);
    gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);
    ourColor = aColor;
    TextureCoord = vec2(aTexCoord.x, aTexCoord.y);
}
