
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ieee754dp {int bits; } ;
typedef int s64 ;


 int COMPXDP ;
 int COMPYDP ;
 int DP_SIGN_BIT ;
 int EXPLODEXDP ;
 int EXPLODEYDP ;
 int FLUSHXDP ;
 int FLUSHYDP ;
 int IEEE754_CEQ ;
 int IEEE754_CGT ;
 scalar_t__ IEEE754_CLASS_SNAN ;
 int IEEE754_CLT ;
 int IEEE754_CUN ;
 int IEEE754_INVALID_OPERATION ;
 scalar_t__ ieee754_class_nan (scalar_t__) ;
 int ieee754_clearcx () ;
 int ieee754_setcx (int ) ;
 scalar_t__ xc ;
 scalar_t__ yc ;

int ieee754dp_cmp(union ieee754dp x, union ieee754dp y, int cmp, int sig)
{
 s64 vx;
 s64 vy;

 COMPXDP;
 COMPYDP;

 EXPLODEXDP;
 EXPLODEYDP;
 FLUSHXDP;
 FLUSHYDP;
 ieee754_clearcx();

 if (ieee754_class_nan(xc) || ieee754_class_nan(yc)) {
  if (sig ||
      xc == IEEE754_CLASS_SNAN || yc == IEEE754_CLASS_SNAN)
   ieee754_setcx(IEEE754_INVALID_OPERATION);
  return (cmp & IEEE754_CUN) != 0;
 } else {
  vx = x.bits;
  vy = y.bits;

  if (vx < 0)
   vx = -vx ^ DP_SIGN_BIT;
  if (vy < 0)
   vy = -vy ^ DP_SIGN_BIT;

  if (vx < vy)
   return (cmp & IEEE754_CLT) != 0;
  else if (vx == vy)
   return (cmp & IEEE754_CEQ) != 0;
  else
   return (cmp & IEEE754_CGT) != 0;
 }
}
