struct modf_result_vec4_f16 {
  vector<float16_t, 4> fract;
  vector<float16_t, 4> whole;
};
void modf_995934() {
  modf_result_vec4_f16 res = {(float16_t(-0.5h)).xxxx, (float16_t(-1.0h)).xxxx};
}

struct tint_symbol {
  float4 value : SV_Position;
};

float4 vertex_main_inner() {
  modf_995934();
  return (0.0f).xxxx;
}

tint_symbol vertex_main() {
  float4 inner_result = vertex_main_inner();
  tint_symbol wrapper_result = (tint_symbol)0;
  wrapper_result.value = inner_result;
  return wrapper_result;
}

void fragment_main() {
  modf_995934();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  modf_995934();
  return;
}
