fn acos_8e2acf() {
  var res : vec4<f32> = acos(vec4<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  acos_8e2acf();
}

[[stage(fragment)]]
fn fragment_main() {
  acos_8e2acf();
}

[[stage(compute)]]
fn compute_main() {
  acos_8e2acf();
}
