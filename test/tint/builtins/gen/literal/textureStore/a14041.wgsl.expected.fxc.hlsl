SKIP: FAILED


enable chromium_experimental_read_write_storage_texture;

@group(1) @binding(0) var arg_0 : texture_storage_1d<rgba32sint, read_write>;

fn textureStore_a14041() {
  textureStore(arg_0, 1i, vec4<i32>(1i));
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureStore_a14041();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureStore_a14041();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureStore_a14041();
}

Failed to generate: builtins/gen/literal/textureStore/a14041.wgsl:24:8 error: HLSL backend does not support extension 'chromium_experimental_read_write_storage_texture'
enable chromium_experimental_read_write_storage_texture;
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
