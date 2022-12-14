#version 310 es

vec4 tint_atanh(vec4 x) {
  return mix(atanh(x), vec4(0.0f), greaterThanEqual(x, vec4(1.0f)));
}

void atanh_f3e01b() {
  vec4 arg_0 = vec4(0.5f);
  vec4 res = tint_atanh(arg_0);
}

vec4 vertex_main() {
  atanh_f3e01b();
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

vec4 tint_atanh(vec4 x) {
  return mix(atanh(x), vec4(0.0f), greaterThanEqual(x, vec4(1.0f)));
}

void atanh_f3e01b() {
  vec4 arg_0 = vec4(0.5f);
  vec4 res = tint_atanh(arg_0);
}

void fragment_main() {
  atanh_f3e01b();
}

void main() {
  fragment_main();
  return;
}
#version 310 es

vec4 tint_atanh(vec4 x) {
  return mix(atanh(x), vec4(0.0f), greaterThanEqual(x, vec4(1.0f)));
}

void atanh_f3e01b() {
  vec4 arg_0 = vec4(0.5f);
  vec4 res = tint_atanh(arg_0);
}

void compute_main() {
  atanh_f3e01b();
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  compute_main();
  return;
}
