RWByteAddressBuffer prevent_dce : register(u0, space2);

void prevent_dce_store(uint offset, matrix<float16_t, 2, 4> value) {
  prevent_dce.Store<vector<float16_t, 4> >((offset + 0u), value[0u]);
  prevent_dce.Store<vector<float16_t, 4> >((offset + 8u), value[1u]);
}

void transpose_5edd96() {
  matrix<float16_t, 4, 2> arg_0 = matrix<float16_t, 4, 2>((float16_t(1.0h)).xx, (float16_t(1.0h)).xx, (float16_t(1.0h)).xx, (float16_t(1.0h)).xx);
  matrix<float16_t, 2, 4> res = transpose(arg_0);
  prevent_dce_store(0u, res);
}

struct tint_symbol {
  float4 value : SV_Position;
};

float4 vertex_main_inner() {
  transpose_5edd96();
  return (0.0f).xxxx;
}

tint_symbol vertex_main() {
  float4 inner_result = vertex_main_inner();
  tint_symbol wrapper_result = (tint_symbol)0;
  wrapper_result.value = inner_result;
  return wrapper_result;
}

void fragment_main() {
  transpose_5edd96();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  transpose_5edd96();
  return;
}
