#version 310 es

layout(binding = 0, std140) uniform u_block_ubo {
  int inner;
  uint pad;
  uint pad_1;
  uint pad_2;
} u;

layout(binding = 1, std430) buffer u_block_ssbo {
  int inner;
  uint pad;
  uint pad_1;
  uint pad_2;
} s;

void tint_symbol() {
  int x = u.inner;
  s.inner = x;
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  tint_symbol();
  return;
}
