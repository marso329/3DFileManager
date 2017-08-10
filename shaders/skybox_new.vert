#version 330

layout (location=0) in vec3 inPosition;
out vec3 texCoord;


uniform mat4 projMatrix;
uniform mat4 mdlMatrix;
uniform mat4 cameraMatrix;



void main(void)
{
	texCoord = inPosition;
	gl_Position = projMatrix* cameraMatrix * mdlMatrix * vec4(inPosition, 1.0);

}
