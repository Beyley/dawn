[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_1d<rgba8uint>;

fn textureStore_3bec15() {
  textureStore(arg_0, 1, vec4<u32>());
}

[[stage(vertex)]]
fn vertex_main() {
  textureStore_3bec15();
}

[[stage(fragment)]]
fn fragment_main() {
  textureStore_3bec15();
}

[[stage(compute)]]
fn compute_main() {
  textureStore_3bec15();
}
