[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_1d<rg32sint>;

fn textureStore_d73b5c() {
  textureStore(arg_0, 1, vec4<i32>());
}

[[stage(vertex)]]
fn vertex_main() {
  textureStore_d73b5c();
}

[[stage(fragment)]]
fn fragment_main() {
  textureStore_d73b5c();
}

[[stage(compute)]]
fn compute_main() {
  textureStore_d73b5c();
}
