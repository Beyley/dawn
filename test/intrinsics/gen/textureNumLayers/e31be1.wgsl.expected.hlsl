RWTexture2DArray<float4> arg_0 : register(u0, space1);

void textureNumLayers_e31be1() {
  int3 tint_tmp;
  arg_0.GetDimensions(tint_tmp.x, tint_tmp.y, tint_tmp.z);
  int res = tint_tmp.z;
}

void vertex_main() {
  textureNumLayers_e31be1();
  return;
}

void fragment_main() {
  textureNumLayers_e31be1();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureNumLayers_e31be1();
  return;
}

