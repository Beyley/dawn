RWTexture2DArray<uint4> arg_0 : register(u0, space1);

void textureStore_00ca64() {
  arg_0[int3(0, 0, int(1u))] = (0u).xxxx;
}

struct tint_symbol {
  float4 value : SV_Position;
};

float4 vertex_main_inner() {
  textureStore_00ca64();
  return (0.0f).xxxx;
}

tint_symbol vertex_main() {
  const float4 inner_result = vertex_main_inner();
  tint_symbol wrapper_result = (tint_symbol)0;
  wrapper_result.value = inner_result;
  return wrapper_result;
}

void fragment_main() {
  textureStore_00ca64();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureStore_00ca64();
  return;
}
