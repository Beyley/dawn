[[group(1), binding(0)]] var arg_0 : texture_1d<u32>;

fn textureLoad_1b8588() {
  var res : vec4<u32> = textureLoad(arg_0, 1, 1);
}

[[stage(vertex)]]
fn vertex_main() {
  textureLoad_1b8588();
}

[[stage(fragment)]]
fn fragment_main() {
  textureLoad_1b8588();
}

[[stage(compute)]]
fn compute_main() {
  textureLoad_1b8588();
}
