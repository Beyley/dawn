Texture2DArray<float4> arg_0 : register(t0, space1);
RWByteAddressBuffer prevent_dce : register(u0, space2);

void textureDimensions_2fd2a4() {
  uint4 tint_tmp;
  arg_0.GetDimensions(1, tint_tmp.x, tint_tmp.y, tint_tmp.z, tint_tmp.w);
  uint2 res = tint_tmp.xy;
  prevent_dce.Store2(0u, asuint(res));
}

struct tint_symbol {
  float4 value : SV_Position;
};

float4 vertex_main_inner() {
  textureDimensions_2fd2a4();
  return (0.0f).xxxx;
}

tint_symbol vertex_main() {
  float4 inner_result = vertex_main_inner();
  tint_symbol wrapper_result = (tint_symbol)0;
  wrapper_result.value = inner_result;
  return wrapper_result;
}

void fragment_main() {
  textureDimensions_2fd2a4();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureDimensions_2fd2a4();
  return;
}
