Texture2DArray<int4> arg_0 : register(t0, space1);

void textureDimensions_9c9c57() {
  int4 tint_tmp;
  arg_0.GetDimensions(1, tint_tmp.x, tint_tmp.y, tint_tmp.z, tint_tmp.w);
  int2 res = tint_tmp.xy;
}

void vertex_main() {
  textureDimensions_9c9c57();
  return;
}

void fragment_main() {
  textureDimensions_9c9c57();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureDimensions_9c9c57();
  return;
}

