void transpose_d8f8ba() {
  float4x3 res = transpose(float3x4((1.0f).xxxx, (1.0f).xxxx, (1.0f).xxxx));
}

struct tint_symbol {
  float4 value : SV_Position;
};

float4 vertex_main_inner() {
  transpose_d8f8ba();
  return (0.0f).xxxx;
}

tint_symbol vertex_main() {
  const float4 inner_result = vertex_main_inner();
  tint_symbol wrapper_result = (tint_symbol)0;
  wrapper_result.value = inner_result;
  return wrapper_result;
}

void fragment_main() {
  transpose_d8f8ba();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  transpose_d8f8ba();
  return;
}
