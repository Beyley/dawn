SKIP: FAILED


enable chromium_experimental_read_write_storage_texture;

@group(1) @binding(0) var arg_0 : texture_storage_2d_array<rg32sint, read_write>;

fn textureStore_1a6c0b() {
  textureStore(arg_0, vec2<u32>(1u), 1u, vec4<i32>(1i));
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureStore_1a6c0b();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureStore_1a6c0b();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureStore_1a6c0b();
}

Failed to generate: builtins/gen/literal/textureStore/1a6c0b.wgsl:24:8 error: HLSL backend does not support extension 'chromium_experimental_read_write_storage_texture'
enable chromium_experimental_read_write_storage_texture;
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
