fn max_a93419() {
  var res : vec4<f32> = max(vec4<f32>(), vec4<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  max_a93419();
}

[[stage(fragment)]]
fn fragment_main() {
  max_a93419();
}

[[stage(compute)]]
fn compute_main() {
  max_a93419();
}
