void max_a93419() {
  float4 res = max(float4(0.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 0.0f));
}

void vertex_main() {
  max_a93419();
  return;
}

void fragment_main() {
  max_a93419();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  max_a93419();
  return;
}

