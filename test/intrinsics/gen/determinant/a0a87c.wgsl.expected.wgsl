fn determinant_a0a87c() {
  var res : f32 = determinant(mat4x4<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  determinant_a0a87c();
}

[[stage(fragment)]]
fn fragment_main() {
  determinant_a0a87c();
}

[[stage(compute)]]
fn compute_main() {
  determinant_a0a87c();
}
