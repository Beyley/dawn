Texture2DArray<uint4> arg_0 : register(t0, space1);

void textureDimensions_267788() {
  int4 tint_tmp;
  arg_0.GetDimensions(1, tint_tmp.x, tint_tmp.y, tint_tmp.z, tint_tmp.w);
  int2 res = tint_tmp.xy;
}

void vertex_main() {
  textureDimensions_267788();
  return;
}

void fragment_main() {
  textureDimensions_267788();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureDimensions_267788();
  return;
}

