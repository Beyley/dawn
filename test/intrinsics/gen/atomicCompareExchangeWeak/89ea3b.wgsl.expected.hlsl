SKIP: FAILED


var<workgroup> arg_0 : atomic<i32>;

fn atomicCompareExchangeWeak_89ea3b() {
  var res : vec2<i32> = atomicCompareExchangeWeak(&(arg_0), 1, 1);
}

[[stage(compute)]]
fn compute_main() {
  atomicCompareExchangeWeak_89ea3b();
}

Failed to generate: error: unknown type in EmitType
