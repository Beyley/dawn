[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_2d_array<rgba8uint>;

fn textureStore_22d955() {
  textureStore(arg_0, vec2<i32>(), 1, vec4<u32>());
}

[[stage(vertex)]]
fn vertex_main() {
  textureStore_22d955();
}

[[stage(fragment)]]
fn fragment_main() {
  textureStore_22d955();
}

[[stage(compute)]]
fn compute_main() {
  textureStore_22d955();
}
