#version 410 core
in vec3 position;
void main()
{
    gl_Position = vec4(position.x, position.y, position.z, 1.0f);
}