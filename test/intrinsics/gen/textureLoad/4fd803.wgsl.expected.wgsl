[[group(1), binding(0)]] var arg_0 : texture_3d<i32>;

fn textureLoad_4fd803() {
  var res : vec4<i32> = textureLoad(arg_0, vec3<i32>(), 1);
}

[[stage(vertex)]]
fn vertex_main() {
  textureLoad_4fd803();
}

[[stage(fragment)]]
fn fragment_main() {
  textureLoad_4fd803();
}

[[stage(compute)]]
fn compute_main() {
  textureLoad_4fd803();
}
