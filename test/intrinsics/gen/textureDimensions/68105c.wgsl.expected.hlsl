RWTexture2D<uint4> arg_0 : register(u0, space1);

void textureDimensions_68105c() {
  int2 tint_tmp;
  arg_0.GetDimensions(tint_tmp.x, tint_tmp.y);
  int2 res = tint_tmp;
}

void vertex_main() {
  textureDimensions_68105c();
  return;
}

void fragment_main() {
  textureDimensions_68105c();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureDimensions_68105c();
  return;
}

