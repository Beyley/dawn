fn atan_5ca7b8() {
  var res = atan(vec2(1));
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  atan_5ca7b8();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  atan_5ca7b8();
}

@compute @workgroup_size(1)
fn compute_main() {
  atan_5ca7b8();
}
