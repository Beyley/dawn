Texture1D<uint4> arg_0 : register(t0, space1);

void textureLoad_1a8452() {
  uint4 res = arg_0.Load(int2(1, 0));
}

void vertex_main() {
  textureLoad_1a8452();
  return;
}

void fragment_main() {
  textureLoad_1a8452();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureLoad_1a8452();
  return;
}

