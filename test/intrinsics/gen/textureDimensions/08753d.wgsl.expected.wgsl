[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_1d<rgba16sint>;

fn textureDimensions_08753d() {
  var res : i32 = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_08753d();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_08753d();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_08753d();
}
