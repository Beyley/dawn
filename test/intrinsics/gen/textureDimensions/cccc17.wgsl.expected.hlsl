TextureCube<int4> arg_0 : register(t0, space1);

void textureDimensions_cccc17() {
  int2 tint_tmp;
  arg_0.GetDimensions(tint_tmp.x, tint_tmp.y);
  int3 res = tint_tmp.xyy;
}

void vertex_main() {
  textureDimensions_cccc17();
  return;
}

void fragment_main() {
  textureDimensions_cccc17();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureDimensions_cccc17();
  return;
}

