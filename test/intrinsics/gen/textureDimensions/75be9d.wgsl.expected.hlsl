TextureCube<float4> arg_0 : register(t0, space1);

void textureDimensions_75be9d() {
  int3 tint_tmp;
  arg_0.GetDimensions(1, tint_tmp.x, tint_tmp.y, tint_tmp.z);
  int3 res = tint_tmp.xyy;
}

void vertex_main() {
  textureDimensions_75be9d();
  return;
}

void fragment_main() {
  textureDimensions_75be9d();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureDimensions_75be9d();
  return;
}

