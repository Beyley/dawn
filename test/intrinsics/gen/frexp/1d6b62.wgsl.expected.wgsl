fn frexp_1d6b62() {
  var arg_1 : vec2<i32>;
  var res : vec2<f32> = frexp(vec2<f32>(), &(arg_1));
}

[[stage(vertex)]]
fn vertex_main() {
  frexp_1d6b62();
}

[[stage(fragment)]]
fn fragment_main() {
  frexp_1d6b62();
}

[[stage(compute)]]
fn compute_main() {
  frexp_1d6b62();
}
