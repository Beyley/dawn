[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_2d_array<rgba16float>;

fn textureDimensions_0a5fcf() {
  var res : vec2<i32> = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_0a5fcf();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_0a5fcf();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_0a5fcf();
}
