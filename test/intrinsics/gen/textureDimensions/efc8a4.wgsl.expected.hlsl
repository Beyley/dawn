Texture3D<int4> arg_0 : register(t0, space1);

void textureDimensions_efc8a4() {
  int4 tint_tmp;
  arg_0.GetDimensions(1, tint_tmp.x, tint_tmp.y, tint_tmp.z, tint_tmp.w);
  int3 res = tint_tmp.xyz;
}

void vertex_main() {
  textureDimensions_efc8a4();
  return;
}

void fragment_main() {
  textureDimensions_efc8a4();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureDimensions_efc8a4();
  return;
}

