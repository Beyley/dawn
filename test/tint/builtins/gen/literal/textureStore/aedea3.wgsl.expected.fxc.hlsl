SKIP: FAILED


enable chromium_experimental_read_write_storage_texture;

@group(1) @binding(0) var arg_0 : texture_storage_2d_array<rgba16uint, read_write>;

fn textureStore_aedea3() {
  textureStore(arg_0, vec2<u32>(1u), 1i, vec4<u32>(1u));
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureStore_aedea3();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureStore_aedea3();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureStore_aedea3();
}

Failed to generate: builtins/gen/literal/textureStore/aedea3.wgsl:24:8 error: HLSL backend does not support extension 'chromium_experimental_read_write_storage_texture'
enable chromium_experimental_read_write_storage_texture;
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
