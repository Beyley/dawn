Texture3D<uint4> arg_0 : register(t0, space1);

void textureDimensions_924742() {
  int3 tint_tmp;
  arg_0.GetDimensions(tint_tmp.x, tint_tmp.y, tint_tmp.z);
  int3 res = tint_tmp;
}

void vertex_main() {
  textureDimensions_924742();
  return;
}

void fragment_main() {
  textureDimensions_924742();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureDimensions_924742();
  return;
}

