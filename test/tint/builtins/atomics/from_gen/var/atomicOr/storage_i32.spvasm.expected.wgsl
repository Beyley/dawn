struct SB_RW_atomic {
  arg_0 : atomic<i32>,
}

struct SB_RW {
  arg_0 : i32,
}

@group(0) @binding(0) var<storage, read_write> sb_rw : SB_RW_atomic;

fn atomicOr_8d96a0() {
  var arg_1 : i32 = 0i;
  var res : i32 = 0i;
  arg_1 = 1i;
  let x_20 : i32 = arg_1;
  let x_13 : i32 = atomicOr(&(sb_rw.arg_0), x_20);
  res = x_13;
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
