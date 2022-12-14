struct S {
  int before;
  float2x2 m;
  int after;
};

cbuffer cbuffer_u : register(b0, space0) {
  uint4 u[8];
};
groupshared S w[4];

struct tint_symbol_1 {
  uint local_invocation_index : SV_GroupIndex;
};

float2x2 tint_symbol_5(uint4 buffer[8], uint offset) {
  const uint scalar_offset = ((offset + 0u)) / 4;
  uint4 ubo_load = buffer[scalar_offset / 4];
  const uint scalar_offset_1 = ((offset + 8u)) / 4;
  uint4 ubo_load_1 = buffer[scalar_offset_1 / 4];
  return float2x2(asfloat(((scalar_offset & 2) ? ubo_load.zw : ubo_load.xy)), asfloat(((scalar_offset_1 & 2) ? ubo_load_1.zw : ubo_load_1.xy)));
}

S tint_symbol_3(uint4 buffer[8], uint offset) {
  const uint scalar_offset_2 = ((offset + 0u)) / 4;
  const uint scalar_offset_3 = ((offset + 24u)) / 4;
  const S tint_symbol_8 = {asint(buffer[scalar_offset_2 / 4][scalar_offset_2 % 4]), tint_symbol_5(buffer, (offset + 8u)), asint(buffer[scalar_offset_3 / 4][scalar_offset_3 % 4])};
  return tint_symbol_8;
}

typedef S tint_symbol_2_ret[4];
tint_symbol_2_ret tint_symbol_2(uint4 buffer[8], uint offset) {
  S arr[4] = (S[4])0;
  {
    for(uint i_1 = 0u; (i_1 < 4u); i_1 = (i_1 + 1u)) {
      arr[i_1] = tint_symbol_3(buffer, (offset + (i_1 * 32u)));
    }
  }
  return arr;
}

void f_inner(uint local_invocation_index) {
  {
    for(uint idx = local_invocation_index; (idx < 4u); idx = (idx + 1u)) {
      const uint i = idx;
      const S tint_symbol_7 = (S)0;
      w[i] = tint_symbol_7;
    }
  }
  GroupMemoryBarrierWithGroupSync();
  w = tint_symbol_2(u, 0u);
  w[1] = tint_symbol_3(u, 64u);
  w[3].m = tint_symbol_5(u, 72u);
  w[1].m[0] = asfloat(u[1].xy).yx;
}

[numthreads(1, 1, 1)]
void f(tint_symbol_1 tint_symbol) {
  f_inner(tint_symbol.local_invocation_index);
  return;
}
