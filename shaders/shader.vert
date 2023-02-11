precision mediump float;

uniform mat4 uModelViewMatrix;
uniform mat4 uProjectionMatrix;

attribute vec3 aPosition;
attribute vec2 aTexCoord;
attribute vec3 aNormal;

// varying vec2 vUv;

void main() {
    vec4 position = vec4(aPosition, 1.0);
    position.xy = position.xy * 2.0 - 1.0;

    // vUv = aTexCoord;
    // gl_Position = position;
    gl_Position = uProjectionMatrix * uModelViewMatrix * vec4(aPosition, 1.0);

}