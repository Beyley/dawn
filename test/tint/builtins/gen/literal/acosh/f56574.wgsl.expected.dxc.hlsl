RWByteAddressBuffer prevent_dce : register(u0, space2);

void acosh_f56574() {
  vector<float16_t, 3> res = (float16_t(0.99951171875h)).xxx;
  prevent_dce.Store<vector<float16_t, 3> >(0u, res);
}

struct tint_symbol {
  float4 value : SV_Position;
};

float4 vertex_main_inner() {
  acosh_f56574();
  return (0.0f).xxxx;
}

tint_symbol vertex_main() {
  float4 inner_result = vertex_main_inner();
  tint_symbol wrapper_result = (tint_symbol)0;
  wrapper_result.value = inner_result;
  return wrapper_result;
}

void fragment_main() {
  acosh_f56574();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  acosh_f56574();
  return;
}
