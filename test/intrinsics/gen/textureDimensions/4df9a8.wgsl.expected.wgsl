[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_1d<rg32uint>;

fn textureDimensions_4df9a8() {
  var res : i32 = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_4df9a8();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_4df9a8();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_4df9a8();
}
