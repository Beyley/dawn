fn abs_1ce782() {
  var res : vec4<u32> = abs(vec4<u32>());
}

[[stage(vertex)]]
fn vertex_main() {
  abs_1ce782();
}

[[stage(fragment)]]
fn fragment_main() {
  abs_1ce782();
}

[[stage(compute)]]
fn compute_main() {
  abs_1ce782();
}
