fn ldexp_2cb32a() {
  var res : vec3<f32> = ldexp(vec3<f32>(), vec3<u32>());
}

[[stage(vertex)]]
fn vertex_main() {
  ldexp_2cb32a();
}

[[stage(fragment)]]
fn fragment_main() {
  ldexp_2cb32a();
}

[[stage(compute)]]
fn compute_main() {
  ldexp_2cb32a();
}
