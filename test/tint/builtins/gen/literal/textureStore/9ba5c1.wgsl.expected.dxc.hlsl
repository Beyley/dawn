SKIP: FAILED


enable chromium_experimental_read_write_storage_texture;

@group(1) @binding(0) var arg_0 : texture_storage_1d<rgba16uint, read_write>;

fn textureStore_9ba5c1() {
  textureStore(arg_0, 1u, vec4<u32>(1u));
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureStore_9ba5c1();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureStore_9ba5c1();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureStore_9ba5c1();
}

Failed to generate: builtins/gen/literal/textureStore/9ba5c1.wgsl:24:8 error: HLSL backend does not support extension 'chromium_experimental_read_write_storage_texture'
enable chromium_experimental_read_write_storage_texture;
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
