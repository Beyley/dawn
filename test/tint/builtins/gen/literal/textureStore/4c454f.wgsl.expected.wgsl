@group(1) @binding(0) var arg_0 : texture_storage_2d_array<rg32sint, write>;

fn textureStore_4c454f() {
  textureStore(arg_0, vec2<u32>(), 1u, vec4<i32>());
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureStore_4c454f();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureStore_4c454f();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureStore_4c454f();
}
