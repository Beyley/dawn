#version 310 es
precision highp float;
precision highp int;

struct SB_RW_atomic {
  uint arg_0;
};

struct SB_RW {
  uint arg_0;
};

layout(binding = 0, std430) buffer sb_rw_block_ssbo {
  SB_RW_atomic inner;
} sb_rw;

void atomicStore_cdc29e() {
  atomicExchange(sb_rw.inner.arg_0, 1u);
  return;
}

void fragment_main_1() {
  atomicStore_cdc29e();
  return;
}

void fragment_main() {
  fragment_main_1();
}

void main() {
  fragment_main();
  return;
}
#version 310 es

struct SB_RW_atomic {
  uint arg_0;
};

struct SB_RW {
  uint arg_0;
};

layout(binding = 0, std430) buffer sb_rw_block_ssbo {
  SB_RW_atomic inner;
} sb_rw;

void atomicStore_cdc29e() {
  atomicExchange(sb_rw.inner.arg_0, 1u);
  return;
}

void compute_main_1() {
  atomicStore_cdc29e();
  return;
}

void compute_main() {
  compute_main_1();
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  compute_main();
  return;
}
