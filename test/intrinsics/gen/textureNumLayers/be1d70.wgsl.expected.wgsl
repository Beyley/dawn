[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_2d_array<rgba16float>;

fn textureNumLayers_be1d70() {
  var res : i32 = textureNumLayers(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureNumLayers_be1d70();
}

[[stage(fragment)]]
fn fragment_main() {
  textureNumLayers_be1d70();
}

[[stage(compute)]]
fn compute_main() {
  textureNumLayers_be1d70();
}
