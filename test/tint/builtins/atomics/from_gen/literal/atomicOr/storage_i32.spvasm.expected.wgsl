struct SB_RW_atomic {
  arg_0 : atomic<i32>,
}

struct SB_RW {
  arg_0 : i32,
}

@group(0) @binding(0) var<storage, read_write> sb_rw : SB_RW_atomic;

fn atomicOr_8d96a0() {
  var res : i32 = 0i;
  let x_9 : i32 = atomicOr(&(sb_rw.arg_0), 1i);
  res = x_9;
  return;
}

fn fragment_main_1() {
  atomicOr_8d96a0();
  return;
}

@fragment
fn fragment_main() {
  fragment_main_1();
}

fn compute_main_1() {
  atomicOr_8d96a0();
  return;
}

@compute @workgroup_size(1i, 1i, 1i)
fn compute_main() {
  compute_main_1();
}
