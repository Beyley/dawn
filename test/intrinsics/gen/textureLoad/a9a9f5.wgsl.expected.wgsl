[[group(1), binding(0)]] var arg_0 : texture_3d<u32>;

fn textureLoad_a9a9f5() {
  var res : vec4<u32> = textureLoad(arg_0, vec3<i32>(), 1);
}

[[stage(vertex)]]
fn vertex_main() {
  textureLoad_a9a9f5();
}

[[stage(fragment)]]
fn fragment_main() {
  textureLoad_a9a9f5();
}

[[stage(compute)]]
fn compute_main() {
  textureLoad_a9a9f5();
}
