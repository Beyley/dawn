fn frexp_cb41c5() {
  var arg_1 : vec3<u32>;
  var res : vec3<f32> = frexp(vec3<f32>(), &(arg_1));
}

[[stage(vertex)]]
fn vertex_main() {
  frexp_cb41c5();
}

[[stage(fragment)]]
fn fragment_main() {
  frexp_cb41c5();
}

[[stage(compute)]]
fn compute_main() {
  frexp_cb41c5();
}
