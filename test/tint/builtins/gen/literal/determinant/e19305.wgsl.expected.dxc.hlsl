void determinant_e19305() {
  float res = determinant(float2x2((1.0f).xx, (1.0f).xx));
}

struct tint_symbol {
  float4 value : SV_Position;
};

float4 vertex_main_inner() {
  determinant_e19305();
  return (0.0f).xxxx;
}

tint_symbol vertex_main() {
  const float4 inner_result = vertex_main_inner();
  tint_symbol wrapper_result = (tint_symbol)0;
  wrapper_result.value = inner_result;
  return wrapper_result;
}

void fragment_main() {
  determinant_e19305();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  determinant_e19305();
  return;
}
