[[group(1), binding(0)]] var arg_0 : texture_2d_array<i32>;

fn textureNumLayers_893e7c() {
  var res : i32 = textureNumLayers(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureNumLayers_893e7c();
}

[[stage(fragment)]]
fn fragment_main() {
  textureNumLayers_893e7c();
}

[[stage(compute)]]
fn compute_main() {
  textureNumLayers_893e7c();
}
