#version 310 es
#extension GL_AMD_gpu_shader_half_float : require

layout(binding = 0, std140) uniform u_block_std140_ubo {
  f16vec2 inner_0;
  f16vec2 inner_1;
  uint pad;
  uint pad_1;
} u;

f16mat2 p = f16mat2(0.0hf, 0.0hf, 0.0hf, 0.0hf);
f16mat2 load_u_inner() {
  return f16mat2(u.inner_0, u.inner_1);
}

void f() {
  p = load_u_inner();
  p[1] = u.inner_0;
  p[1] = u.inner_0.yx;
  p[0][1] = u.inner_1[0u];
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  f();
  return;
}
