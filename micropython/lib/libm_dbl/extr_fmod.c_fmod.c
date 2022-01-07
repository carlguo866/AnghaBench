
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ isnan (double) ;

double fmod(double x, double y)
{
 union {double f; uint64_t i;} ux = {x}, uy = {y};
 int ex = ux.i>>52 & 0x7ff;
 int ey = uy.i>>52 & 0x7ff;
 int sx = ux.i>>63;
 uint64_t i;



 uint64_t uxi = ux.i;

 if (uy.i<<1 == 0 || isnan(y) || ex == 0x7ff)
  return (x*y)/(x*y);
 if (uxi<<1 <= uy.i<<1) {
  if (uxi<<1 == uy.i<<1)
   return 0*x;
  return x;
 }


 if (!ex) {
  for (i = uxi<<12; i>>63 == 0; ex--, i <<= 1);
  uxi <<= -ex + 1;
 } else {
  uxi &= -1ULL >> 12;
  uxi |= 1ULL << 52;
 }
 if (!ey) {
  for (i = uy.i<<12; i>>63 == 0; ey--, i <<= 1);
  uy.i <<= -ey + 1;
 } else {
  uy.i &= -1ULL >> 12;
  uy.i |= 1ULL << 52;
 }


 for (; ex > ey; ex--) {
  i = uxi - uy.i;
  if (i >> 63 == 0) {
   if (i == 0)
    return 0*x;
   uxi = i;
  }
  uxi <<= 1;
 }
 i = uxi - uy.i;
 if (i >> 63 == 0) {
  if (i == 0)
   return 0*x;
  uxi = i;
 }
 for (; uxi>>52 == 0; uxi <<= 1, ex--);


 if (ex > 0) {
  uxi -= 1ULL << 52;
  uxi |= (uint64_t)ex << 52;
 } else {
  uxi >>= -ex + 1;
 }
 uxi |= (uint64_t)sx << 63;
 ux.i = uxi;
 return ux.f;
}
