#version 310 es
precision highp float;
precision highp int;

layout(binding = 0, std430) buffer prevent_dce_block_ssbo {
  vec2 inner;
} prevent_dce;

void dpdy_a8b56e() {
  vec2 res = dFdy(vec2(1.0f));
  prevent_dce.inner = res;
}

void fragment_main() {
  dpdy_a8b56e();
}

void main() {
  fragment_main();
  return;
}
