SKIP: FAILED


enable chromium_experimental_read_write_storage_texture;

@group(1) @binding(0) var arg_0 : texture_storage_3d<r32float, read_write>;

fn textureLoad_272e7a() {
  var res : vec4<f32> = textureLoad(arg_0, vec3<u32>(1u));
  prevent_dce = res;
}

@group(2) @binding(0) var<storage, read_write> prevent_dce : vec4<f32>;

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureLoad_272e7a();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureLoad_272e7a();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureLoad_272e7a();
}

Failed to generate: builtins/gen/literal/textureLoad/272e7a.wgsl:24:8 error: HLSL backend does not support extension 'chromium_experimental_read_write_storage_texture'
enable chromium_experimental_read_write_storage_texture;
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
