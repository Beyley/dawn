[[group(1), binding(0)]] var arg_0 : texture_2d_array<f32>;

fn textureDimensions_cec841() {
  var res : vec2<i32> = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_cec841();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_cec841();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_cec841();
}
