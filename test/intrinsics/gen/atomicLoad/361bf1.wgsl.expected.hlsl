SKIP: FAILED


var<workgroup> arg_0 : atomic<u32>;

fn atomicLoad_361bf1() {
  var res : u32 = atomicLoad(&(arg_0));
}

[[stage(compute)]]
fn compute_main() {
  atomicLoad_361bf1();
}

Failed to generate: error: unknown type in EmitType
