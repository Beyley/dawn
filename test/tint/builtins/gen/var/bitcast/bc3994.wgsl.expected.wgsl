enable f16;

fn bitcast_bc3994() {
  var arg_0 = vec2<u32>(1u);
  var res : vec4<f16> = bitcast<vec4<f16>>(arg_0);
  prevent_dce = res;
}

@group(2) @binding(0) var<storage, read_write> prevent_dce : vec4<f16>;

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  bitcast_bc3994();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  bitcast_bc3994();
}

@compute @workgroup_size(1)
fn compute_main() {
  bitcast_bc3994();
}
