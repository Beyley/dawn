fn dot_883f0e() {
  var res : f32 = dot(vec2<f32>(), vec2<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  dot_883f0e();
}

[[stage(fragment)]]
fn fragment_main() {
  dot_883f0e();
}

[[stage(compute)]]
fn compute_main() {
  dot_883f0e();
}
