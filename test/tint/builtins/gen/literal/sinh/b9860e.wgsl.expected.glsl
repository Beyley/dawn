#version 310 es

layout(binding = 0, std430) buffer prevent_dce_block_ssbo {
  vec2 inner;
} prevent_dce;

void sinh_b9860e() {
  vec2 res = vec2(1.17520117759704589844f);
  prevent_dce.inner = res;
}

vec4 vertex_main() {
  sinh_b9860e();
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

layout(binding = 0, std430) buffer prevent_dce_block_ssbo {
  vec2 inner;
} prevent_dce;

void sinh_b9860e() {
  vec2 res = vec2(1.17520117759704589844f);
  prevent_dce.inner = res;
}

void fragment_main() {
  sinh_b9860e();
}

void main() {
  fragment_main();
  return;
}
#version 310 es

layout(binding = 0, std430) buffer prevent_dce_block_ssbo {
  vec2 inner;
} prevent_dce;

void sinh_b9860e() {
  vec2 res = vec2(1.17520117759704589844f);
  prevent_dce.inner = res;
}

void compute_main() {
  sinh_b9860e();
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  compute_main();
  return;
}
