Texture3D<float4> arg_0 : register(t0, space1);

void textureDimensions_57e7b3() {
  int3 tint_tmp;
  arg_0.GetDimensions(tint_tmp.x, tint_tmp.y, tint_tmp.z);
  int3 res = tint_tmp;
}

void vertex_main() {
  textureDimensions_57e7b3();
  return;
}

void fragment_main() {
  textureDimensions_57e7b3();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureDimensions_57e7b3();
  return;
}

