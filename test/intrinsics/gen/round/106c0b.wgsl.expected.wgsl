fn round_106c0b() {
  var res : vec4<f32> = round(vec4<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  round_106c0b();
}

[[stage(fragment)]]
fn fragment_main() {
  round_106c0b();
}

[[stage(compute)]]
fn compute_main() {
  round_106c0b();
}
