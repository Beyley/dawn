[[block]]
struct SB {
  arg_0 : array<u32>;
};

[[group(0), binding(0)]] var<storage> sb : [[access(read)]] SB;

fn arrayLength_647a40() {
  var res : u32 = arrayLength(sb.arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  arrayLength_647a40();
}

[[stage(fragment)]]
fn fragment_main() {
  arrayLength_647a40();
}

[[stage(compute)]]
fn compute_main() {
  arrayLength_647a40();
}
