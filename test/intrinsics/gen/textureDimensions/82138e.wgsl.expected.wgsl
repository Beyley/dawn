[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_2d<rgba16uint>;

fn textureDimensions_82138e() {
  var res : vec2<i32> = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_82138e();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_82138e();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_82138e();
}
