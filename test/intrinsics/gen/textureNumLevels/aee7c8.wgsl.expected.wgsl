[[group(1), binding(0)]] var arg_0 : texture_cube_array<f32>;

fn textureNumLevels_aee7c8() {
  var res : i32 = textureNumLevels(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureNumLevels_aee7c8();
}

[[stage(fragment)]]
fn fragment_main() {
  textureNumLevels_aee7c8();
}

[[stage(compute)]]
fn compute_main() {
  textureNumLevels_aee7c8();
}
