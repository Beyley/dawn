SKIP: FAILED


enable chromium_experimental_read_write_storage_texture;

@group(1) @binding(0) var arg_0 : texture_storage_2d<rg32uint, read_write>;

fn textureStore_5425ab() {
  textureStore(arg_0, vec2<i32>(1i), vec4<u32>(1u));
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureStore_5425ab();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureStore_5425ab();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureStore_5425ab();
}

Failed to generate: builtins/gen/literal/textureStore/5425ab.wgsl:24:8 error: HLSL backend does not support extension 'chromium_experimental_read_write_storage_texture'
enable chromium_experimental_read_write_storage_texture;
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
