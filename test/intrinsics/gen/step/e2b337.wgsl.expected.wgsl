fn step_e2b337() {
  var res : vec4<f32> = step(vec4<f32>(), vec4<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  step_e2b337();
}

[[stage(fragment)]]
fn fragment_main() {
  step_e2b337();
}

[[stage(compute)]]
fn compute_main() {
  step_e2b337();
}
