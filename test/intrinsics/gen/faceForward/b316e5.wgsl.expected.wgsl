fn faceForward_b316e5() {
  var res : vec4<f32> = faceForward(vec4<f32>(), vec4<f32>(), vec4<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  faceForward_b316e5();
}

[[stage(fragment)]]
fn fragment_main() {
  faceForward_b316e5();
}

[[stage(compute)]]
fn compute_main() {
  faceForward_b316e5();
}
