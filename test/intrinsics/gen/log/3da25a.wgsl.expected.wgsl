fn log_3da25a() {
  var res : vec4<f32> = log(vec4<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  log_3da25a();
}

[[stage(fragment)]]
fn fragment_main() {
  log_3da25a();
}

[[stage(compute)]]
fn compute_main() {
  log_3da25a();
}
