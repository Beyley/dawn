SKIP: FAILED



Validation Failure:
Texture2DArray<uint4> arg_0 : register(t0, space1);

void textureLoad_8e5032() {
  uint4 res = arg_0.Load(int4(1, 0));
}

void vertex_main() {
  textureLoad_8e5032();
  return;
}

void fragment_main() {
  textureLoad_8e5032();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureLoad_8e5032();
  return;
}


tint_nKMIU1:4:31: error: too few elements in vector initialization (expected 4 elements, have 2)
  uint4 res = arg_0.Load(int4(1, 0));
                              ^


tint_nKMIU1:4:31: error: too few elements in vector initialization (expected 4 elements, have 2)
  uint4 res = arg_0.Load(int4(1, 0));
                              ^


tint_nKMIU1:4:31: error: too few elements in vector initialization (expected 4 elements, have 2)
  uint4 res = arg_0.Load(int4(1, 0));
                              ^

