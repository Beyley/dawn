SKIP: FAILED


enable chromium_experimental_read_write_storage_texture;

@group(1) @binding(0) var arg_0 : texture_storage_2d<r32uint, read_write>;

fn textureStore_4bf1fd() {
  textureStore(arg_0, vec2<u32>(1u), vec4<u32>(1u));
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureStore_4bf1fd();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureStore_4bf1fd();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureStore_4bf1fd();
}

Failed to generate: builtins/gen/literal/textureStore/4bf1fd.wgsl:24:8 error: HLSL backend does not support extension 'chromium_experimental_read_write_storage_texture'
enable chromium_experimental_read_write_storage_texture;
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
