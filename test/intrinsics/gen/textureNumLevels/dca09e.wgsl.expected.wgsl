[[group(1), binding(0)]] var arg_0 : texture_3d<f32>;

fn textureNumLevels_dca09e() {
  var res : i32 = textureNumLevels(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureNumLevels_dca09e();
}

[[stage(fragment)]]
fn fragment_main() {
  textureNumLevels_dca09e();
}

[[stage(compute)]]
fn compute_main() {
  textureNumLevels_dca09e();
}
