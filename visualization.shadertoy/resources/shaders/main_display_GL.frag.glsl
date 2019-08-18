#version 130

uniform sampler2D uTexture;

in vec2 vTextureCoord;

out vec4 FragColor;

void main(void)
{
  FragColor = texture2D(uTexture, vTextureCoord);
}
