[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_2d_array<rgba8unorm>;

fn textureDimensions_1a58e7() {
  var res : vec2<i32> = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_1a58e7();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_1a58e7();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_1a58e7();
}
