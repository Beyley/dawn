SKIP: FAILED



Validation Failure:
Texture3D<int4> arg_0 : register(t0, space1);

void textureLoad_505aa2() {
  int4 res = arg_0.Load(int4(0));
}

void vertex_main() {
  textureLoad_505aa2();
  return;
}

void fragment_main() {
  textureLoad_505aa2();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureLoad_505aa2();
  return;
}


tint_sHFgpf:4:30: error: too few elements in vector initialization (expected 4 elements, have 1)
  int4 res = arg_0.Load(int4(0));
                             ^


tint_sHFgpf:4:30: error: too few elements in vector initialization (expected 4 elements, have 1)
  int4 res = arg_0.Load(int4(0));
                             ^


tint_sHFgpf:4:30: error: too few elements in vector initialization (expected 4 elements, have 1)
  int4 res = arg_0.Load(int4(0));
                             ^

