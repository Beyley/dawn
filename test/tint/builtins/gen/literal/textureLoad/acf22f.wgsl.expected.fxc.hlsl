SKIP: FAILED


enable chromium_experimental_read_write_storage_texture;

@group(1) @binding(0) var arg_0 : texture_storage_1d<rgba16float, read_write>;

fn textureLoad_acf22f() {
  var res : vec4<f32> = textureLoad(arg_0, 1u);
  prevent_dce = res;
}

@group(2) @binding(0) var<storage, read_write> prevent_dce : vec4<f32>;

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureLoad_acf22f();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureLoad_acf22f();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureLoad_acf22f();
}

Failed to generate: builtins/gen/literal/textureLoad/acf22f.wgsl:24:8 error: HLSL backend does not support extension 'chromium_experimental_read_write_storage_texture'
enable chromium_experimental_read_write_storage_texture;
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
