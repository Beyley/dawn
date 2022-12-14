#version 310 es

uniform highp sampler2DMS arg_0_1;
void textureLoad_fcd23d() {
  float res = texelFetch(arg_0_1, ivec2(uvec2(0u)), 1).x;
}

vec4 vertex_main() {
  textureLoad_fcd23d();
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
precision mediump float;

uniform highp sampler2DMS arg_0_1;
void textureLoad_fcd23d() {
  float res = texelFetch(arg_0_1, ivec2(uvec2(0u)), 1).x;
}

void fragment_main() {
  textureLoad_fcd23d();
}

void main() {
  fragment_main();
  return;
}
#version 310 es

uniform highp sampler2DMS arg_0_1;
void textureLoad_fcd23d() {
  float res = texelFetch(arg_0_1, ivec2(uvec2(0u)), 1).x;
}

void compute_main() {
  textureLoad_fcd23d();
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  compute_main();
  return;
}
