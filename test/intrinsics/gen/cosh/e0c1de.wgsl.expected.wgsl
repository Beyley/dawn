fn cosh_e0c1de() {
  var res : vec4<f32> = cosh(vec4<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  cosh_e0c1de();
}

[[stage(fragment)]]
fn fragment_main() {
  cosh_e0c1de();
}

[[stage(compute)]]
fn compute_main() {
  cosh_e0c1de();
}
