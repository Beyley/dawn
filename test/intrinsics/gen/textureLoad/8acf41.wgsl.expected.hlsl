SKIP: FAILED



Validation Failure:
Texture2D<float4> arg_0 : register(t0, space1);

void textureLoad_8acf41() {
  float4 res = arg_0.Load(int3(0), 0);
}

void vertex_main() {
  textureLoad_8acf41();
  return;
}

void fragment_main() {
  textureLoad_8acf41();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureLoad_8acf41();
  return;
}


tint_ZQ8VDM:4:32: error: too few elements in vector initialization (expected 3 elements, have 1)
  float4 res = arg_0.Load(int3(0), 0);
                               ^


tint_ZQ8VDM:4:32: error: too few elements in vector initialization (expected 3 elements, have 1)
  float4 res = arg_0.Load(int3(0), 0);
                               ^


tint_ZQ8VDM:4:32: error: too few elements in vector initialization (expected 3 elements, have 1)
  float4 res = arg_0.Load(int3(0), 0);
                               ^

