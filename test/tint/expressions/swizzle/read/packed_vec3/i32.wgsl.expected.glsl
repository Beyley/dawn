#version 310 es

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void unused_entry_point() {
  return;
}
struct S {
  ivec3 v;
  uint pad;
};

layout(binding = 0, std140) uniform U_block_ubo {
  S inner;
} U;

void f() {
  ivec3 v = U.inner.v;
  int x = U.inner.v.x;
  int y = U.inner.v.y;
  int z = U.inner.v.z;
  ivec2 xx = U.inner.v.xx;
  ivec2 xy = U.inner.v.xy;
  ivec2 xz = U.inner.v.xz;
  ivec2 yx = U.inner.v.yx;
  ivec2 yy = U.inner.v.yy;
  ivec2 yz = U.inner.v.yz;
  ivec2 zx = U.inner.v.zx;
  ivec2 zy = U.inner.v.zy;
  ivec2 zz = U.inner.v.zz;
  ivec3 xxx = U.inner.v.xxx;
  ivec3 xxy = U.inner.v.xxy;
  ivec3 xxz = U.inner.v.xxz;
  ivec3 xyx = U.inner.v.xyx;
  ivec3 xyy = U.inner.v.xyy;
  ivec3 xyz = U.inner.v.xyz;
  ivec3 xzx = U.inner.v.xzx;
  ivec3 xzy = U.inner.v.xzy;
  ivec3 xzz = U.inner.v.xzz;
  ivec3 yxx = U.inner.v.yxx;
  ivec3 yxy = U.inner.v.yxy;
  ivec3 yxz = U.inner.v.yxz;
  ivec3 yyx = U.inner.v.yyx;
  ivec3 yyy = U.inner.v.yyy;
  ivec3 yyz = U.inner.v.yyz;
  ivec3 yzx = U.inner.v.yzx;
  ivec3 yzy = U.inner.v.yzy;
  ivec3 yzz = U.inner.v.yzz;
  ivec3 zxx = U.inner.v.zxx;
  ivec3 zxy = U.inner.v.zxy;
  ivec3 zxz = U.inner.v.zxz;
  ivec3 zyx = U.inner.v.zyx;
  ivec3 zyy = U.inner.v.zyy;
  ivec3 zyz = U.inner.v.zyz;
  ivec3 zzx = U.inner.v.zzx;
  ivec3 zzy = U.inner.v.zzy;
  ivec3 zzz = U.inner.v.zzz;
  ivec4 xxxx = U.inner.v.xxxx;
  ivec4 xxxy = U.inner.v.xxxy;
  ivec4 xxxz = U.inner.v.xxxz;
  ivec4 xxyx = U.inner.v.xxyx;
  ivec4 xxyy = U.inner.v.xxyy;
  ivec4 xxyz = U.inner.v.xxyz;
  ivec4 xxzx = U.inner.v.xxzx;
  ivec4 xxzy = U.inner.v.xxzy;
  ivec4 xxzz = U.inner.v.xxzz;
  ivec4 xyxx = U.inner.v.xyxx;
  ivec4 xyxy = U.inner.v.xyxy;
  ivec4 xyxz = U.inner.v.xyxz;
  ivec4 xyyx = U.inner.v.xyyx;
  ivec4 xyyy = U.inner.v.xyyy;
  ivec4 xyyz = U.inner.v.xyyz;
  ivec4 xyzx = U.inner.v.xyzx;
  ivec4 xyzy = U.inner.v.xyzy;
  ivec4 xyzz = U.inner.v.xyzz;
  ivec4 xzxx = U.inner.v.xzxx;
  ivec4 xzxy = U.inner.v.xzxy;
  ivec4 xzxz = U.inner.v.xzxz;
  ivec4 xzyx = U.inner.v.xzyx;
  ivec4 xzyy = U.inner.v.xzyy;
  ivec4 xzyz = U.inner.v.xzyz;
  ivec4 xzzx = U.inner.v.xzzx;
  ivec4 xzzy = U.inner.v.xzzy;
  ivec4 xzzz = U.inner.v.xzzz;
  ivec4 yxxx = U.inner.v.yxxx;
  ivec4 yxxy = U.inner.v.yxxy;
  ivec4 yxxz = U.inner.v.yxxz;
  ivec4 yxyx = U.inner.v.yxyx;
  ivec4 yxyy = U.inner.v.yxyy;
  ivec4 yxyz = U.inner.v.yxyz;
  ivec4 yxzx = U.inner.v.yxzx;
  ivec4 yxzy = U.inner.v.yxzy;
  ivec4 yxzz = U.inner.v.yxzz;
  ivec4 yyxx = U.inner.v.yyxx;
  ivec4 yyxy = U.inner.v.yyxy;
  ivec4 yyxz = U.inner.v.yyxz;
  ivec4 yyyx = U.inner.v.yyyx;
  ivec4 yyyy = U.inner.v.yyyy;
  ivec4 yyyz = U.inner.v.yyyz;
  ivec4 yyzx = U.inner.v.yyzx;
  ivec4 yyzy = U.inner.v.yyzy;
  ivec4 yyzz = U.inner.v.yyzz;
  ivec4 yzxx = U.inner.v.yzxx;
  ivec4 yzxy = U.inner.v.yzxy;
  ivec4 yzxz = U.inner.v.yzxz;
  ivec4 yzyx = U.inner.v.yzyx;
  ivec4 yzyy = U.inner.v.yzyy;
  ivec4 yzyz = U.inner.v.yzyz;
  ivec4 yzzx = U.inner.v.yzzx;
  ivec4 yzzy = U.inner.v.yzzy;
  ivec4 yzzz = U.inner.v.yzzz;
  ivec4 zxxx = U.inner.v.zxxx;
  ivec4 zxxy = U.inner.v.zxxy;
  ivec4 zxxz = U.inner.v.zxxz;
  ivec4 zxyx = U.inner.v.zxyx;
  ivec4 zxyy = U.inner.v.zxyy;
  ivec4 zxyz = U.inner.v.zxyz;
  ivec4 zxzx = U.inner.v.zxzx;
  ivec4 zxzy = U.inner.v.zxzy;
  ivec4 zxzz = U.inner.v.zxzz;
  ivec4 zyxx = U.inner.v.zyxx;
  ivec4 zyxy = U.inner.v.zyxy;
  ivec4 zyxz = U.inner.v.zyxz;
  ivec4 zyyx = U.inner.v.zyyx;
  ivec4 zyyy = U.inner.v.zyyy;
  ivec4 zyyz = U.inner.v.zyyz;
  ivec4 zyzx = U.inner.v.zyzx;
  ivec4 zyzy = U.inner.v.zyzy;
  ivec4 zyzz = U.inner.v.zyzz;
  ivec4 zzxx = U.inner.v.zzxx;
  ivec4 zzxy = U.inner.v.zzxy;
  ivec4 zzxz = U.inner.v.zzxz;
  ivec4 zzyx = U.inner.v.zzyx;
  ivec4 zzyy = U.inner.v.zzyy;
  ivec4 zzyz = U.inner.v.zzyz;
  ivec4 zzzx = U.inner.v.zzzx;
  ivec4 zzzy = U.inner.v.zzzy;
  ivec4 zzzz = U.inner.v.zzzz;
}

