SKIP: FAILED


var<workgroup> arg_0 : atomic<i32>;

fn atomicMin_278235() {
  var res : i32 = atomicMin(&(arg_0), 1);
}

[[stage(compute)]]
fn compute_main() {
  atomicMin_278235();
}

Failed to generate: error: unknown type in EmitType
