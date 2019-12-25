#version 460 core

out vec4 FragmentColor;

in vec3 ourColor;
in vec2 TextureCoord;

//uniform float green;
uniform float mixPercentage;
uniform sampler2D texture1;
uniform sampler2D texture2;

void main()
{
//    FragmentColor = vec4(0.2f, green, 0.5f, 1.0f);
//    FragmentColor = vec4(ourColor, 1.0f);
    FragmentColor = mix(texture(texture1, TextureCoord), texture(texture2, TextureCoord*vec2(-1.0,1.0)), mixPercentage);
}
