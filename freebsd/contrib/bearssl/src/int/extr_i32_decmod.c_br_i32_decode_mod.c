
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ CMP (int,int) ;
 int EQ (int,int ) ;
 int MUX (int ,int,int) ;
 int br_i32_zero (int*,int const) ;

uint32_t
br_i32_decode_mod(uint32_t *x, const void *src, size_t len, const uint32_t *m)
{
 const unsigned char *buf;
 uint32_t r;
 size_t u, v, mlen;

 buf = src;







 mlen = (m[0] + 7) >> 3;
 r = 0;
 for (u = (mlen > len) ? mlen : len; u > 0; u --) {
  uint32_t mb, xb;

  v = u - 1;
  if (v >= mlen) {
   mb = 0;
  } else {
   mb = (m[1 + (v >> 2)] >> ((v & 3) << 3)) & 0xFF;
  }
  if (v >= len) {
   xb = 0;
  } else {
   xb = buf[len - u];
  }
  r = MUX(EQ(r, 0), (uint32_t)CMP(xb, mb), r);
 }





 r >>= 24;
 br_i32_zero(x, m[0]);
 u = (mlen > len) ? len : mlen;
 while (u > 0) {
  uint32_t xb;

  xb = buf[len - u] & r;
  u --;
  x[1 + (u >> 2)] |= xb << ((u & 3) << 3);
 }
 return r >> 7;
}
