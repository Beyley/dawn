@group(1) @binding(0) var arg_0 : texture_storage_1d<rgba32uint, write>;

fn textureStore_d26166() {
  var arg_1 = 1u;
  var arg_2 = vec4<u32>();
  textureStore(arg_0, arg_1, arg_2);
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureStore_d26166();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureStore_d26166();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureStore_d26166();
}
