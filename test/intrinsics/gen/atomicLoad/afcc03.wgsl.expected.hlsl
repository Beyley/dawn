SKIP: FAILED


var<workgroup> arg_0 : atomic<i32>;

fn atomicLoad_afcc03() {
  var res : i32 = atomicLoad(&(arg_0));
}

[[stage(compute)]]
fn compute_main() {
  atomicLoad_afcc03();
}

Failed to generate: error: unknown type in EmitType
