precision mediump float;

uniform mat4 uModelViewMatrix;
uniform mat4 uProjectionMatrix;

attribute vec3 aPosition;
attribute vec2 aTexCoord;
// attribute vec3 aNormal; // access normals

// varying vec2 vUv;

void main() {
    vec4 position = vec4(aPosition, 1.0);
    position.xy = position.xy * 2.0 - 1.0;

    // vUv = aTexCoord; // use this to pass texture coordinates to fragment shader
    // gl_Position = position; // this projects the shader to the whole screen
    gl_Position = uProjectionMatrix * uModelViewMatrix * vec4(aPosition, 1.0); // use this to project the shader to a particular shape's vertices and not the whole screen

}
