struct modf_result {
  float fract;
  float whole;
};
[numthreads(1, 1, 1)]
void main() {
  const modf_result res = {0.25f, 1.0f};
  const float fract = res.fract;
  const float whole = res.whole;
  return;
}
