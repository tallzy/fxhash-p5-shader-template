precision mediump float;

uniform float time;
// uniform vec2 u_resolution;

// varying vec2 vUv;

void main() {
    // vec2 uv = vUv;
    // vec2 st = gl_FragCoord.xy/u_resolution.xy;
    vec3 red = vec3(1.0, 0.0, 0.0);
    vec3 blue = vec3(0.0, 0.0, 1.0);
    
    vec3 color = mix(red, blue, sin(time / 25.0) + 1.0 / 2.0);
    gl_FragColor = vec4(color, 1.0);
}