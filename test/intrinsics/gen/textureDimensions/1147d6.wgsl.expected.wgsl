[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_2d_array<rgba16sint>;

fn textureDimensions_1147d6() {
  var res : vec2<i32> = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_1147d6();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_1147d6();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_1147d6();
}
