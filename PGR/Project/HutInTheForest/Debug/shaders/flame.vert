#version 140

in vec3 position;
in vec2 texCoord;

uniform mat4 PVMmatrix;

smooth out vec2 texCoord_v;

void main(){
	gl_Position = PVMmatrix * vec4(position, 1);
	texCoord_v = texCoord;
}