#version 310 es

layout(rgba8ui) uniform highp writeonly uimage2DArray arg_0;
layout(binding = 0, std430) buffer prevent_dce_block_ssbo {
  uint inner;
} prevent_dce;

void textureNumLayers_32ca10() {
  uint res = uint(imageSize(arg_0).z);
  prevent_dce.inner = res;
}

vec4 vertex_main() {
  textureNumLayers_32ca10();
  return vec4(0.0f);
}

void main() {
  gl_PointSize = 1.0;
  vec4 inner_result = vertex_main();
  gl_Position = inner_result;
  gl_Position.y = -(gl_Position.y);
  gl_Position.z = ((2.0f * gl_Position.z) - gl_Position.w);
  return;
}
#version 310 es
precision highp float;
precision highp int;

layout(rgba8ui) uniform highp writeonly uimage2DArray arg_0;
layout(binding = 0, std430) buffer prevent_dce_block_ssbo {
  uint inner;
} prevent_dce;

void textureNumLayers_32ca10() {
  uint res = uint(imageSize(arg_0).z);
  prevent_dce.inner = res;
}

void fragment_main() {
  textureNumLayers_32ca10();
}

void main() {
  fragment_main();
  return;
}
#version 310 es

layout(rgba8ui) uniform highp writeonly uimage2DArray arg_0;
layout(binding = 0, std430) buffer prevent_dce_block_ssbo {
  uint inner;
} prevent_dce;

void textureNumLayers_32ca10() {
  uint res = uint(imageSize(arg_0).z);
  prevent_dce.inner = res;
}

void compute_main() {
  textureNumLayers_32ca10();
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  compute_main();
  return;
}
