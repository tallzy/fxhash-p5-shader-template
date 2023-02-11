# Fxhash p5js Shader Template
## Overview
Everything you need to start a new p5.js generative art project that uses shaders for release on fx(hash).

Based on [Fxhash p5js Template](https://github.com/tallzy/fxhash-p5-template).

## Shader resources

- excellent resource on [using shaders with p5.js](https://github.com/ITP-xStory/p5js-shaders)
- a collection of [heavily commented 2d shaders](https://github.com/aferriss/p5jsShaderExamples)

### Notes
- put any additional shader files into the `./shaders` folder and load them in your `preload()` function
- uniforms for time and resolution are passed to the shader
- the vertex shader will apply the shader code to the vertices of a particular geometry (i.e. taking into account `uProjectionMatrix` and `uModelViewMatrix`). If you want the shader to project to the whole screen instead see the vertex shader comments
- the minified p5.js library (v1.5.0, released on October 18, 2022) is included in the `./libraries` folder. The latest version of p5.js [can be found here](https://p5js.org/download/).
