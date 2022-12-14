#version 310 es

uvec3 tint_insert_bits(uvec3 v, uvec3 n, uint offset, uint count) {
  uint s = min(offset, 32u);
  uint e = min(32u, (s + count));
  return bitfieldInsert(v, n, int(s), int((e - s)));
}

void f_1() {
  uvec3 v = uvec3(0u);
  uvec3 n = uvec3(0u);
  uint offset_1 = 0u;
  uint count = 0u;
  uvec3 x_17 = v;
  uvec3 x_18 = n;
  uint x_19 = offset_1;
  uint x_20 = count;
  uvec3 x_15 = tint_insert_bits(x_17, x_18, x_19, x_20);
  return;
}

void f() {
  f_1();
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  f();
  return;
}
