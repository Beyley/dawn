fn atan_ad96e4() {
  var res : vec2<f32> = atan(vec2<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  atan_ad96e4();
}

[[stage(fragment)]]
fn fragment_main() {
  atan_ad96e4();
}

[[stage(compute)]]
fn compute_main() {
  atan_ad96e4();
}
