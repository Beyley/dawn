RWTexture3D<int4> arg_0 : register(u0, space1);

void textureDimensions_60bf54() {
  int3 tint_tmp;
  arg_0.GetDimensions(tint_tmp.x, tint_tmp.y, tint_tmp.z);
  int3 res = tint_tmp;
}

void vertex_main() {
  textureDimensions_60bf54();
  return;
}

void fragment_main() {
  textureDimensions_60bf54();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureDimensions_60bf54();
  return;
}

