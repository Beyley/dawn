RWTexture1D<uint4> arg_0 : register(u0, space1);

void textureDimensions_5caa5e() {
  int tint_tmp;
  arg_0.GetDimensions(tint_tmp);
  int res = tint_tmp;
}

void vertex_main() {
  textureDimensions_5caa5e();
  return;
}

void fragment_main() {
  textureDimensions_5caa5e();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureDimensions_5caa5e();
  return;
}

