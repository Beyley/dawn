void step_334303() {
  float3 res = step(float3(0.0f, 0.0f, 0.0f), float3(0.0f, 0.0f, 0.0f));
}

void vertex_main() {
  step_334303();
  return;
}

void fragment_main() {
  step_334303();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  step_334303();
  return;
}

