fn ldexp_db8b49() {
  var res : f32 = ldexp(1.0, 1);
}

[[stage(vertex)]]
fn vertex_main() {
  ldexp_db8b49();
}

[[stage(fragment)]]
fn fragment_main() {
  ldexp_db8b49();
}

[[stage(compute)]]
fn compute_main() {
  ldexp_db8b49();
}
