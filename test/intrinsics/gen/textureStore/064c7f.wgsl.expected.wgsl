[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_2d<rg32float>;

fn textureStore_064c7f() {
  textureStore(arg_0, vec2<i32>(), vec4<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  textureStore_064c7f();
}

[[stage(fragment)]]
fn fragment_main() {
  textureStore_064c7f();
}

[[stage(compute)]]
fn compute_main() {
  textureStore_064c7f();
}
