SKIP: FAILED


enable chromium_experimental_read_write_storage_texture;

@group(1) @binding(0) var arg_0 : texture_storage_1d<r32uint, read_write>;

fn textureStore_8676c9() {
  textureStore(arg_0, 1i, vec4<u32>(1u));
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureStore_8676c9();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureStore_8676c9();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureStore_8676c9();
}

Failed to generate: builtins/gen/literal/textureStore/8676c9.wgsl:24:8 error: HLSL backend does not support extension 'chromium_experimental_read_write_storage_texture'
enable chromium_experimental_read_write_storage_texture;
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
