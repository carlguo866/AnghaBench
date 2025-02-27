
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



int fixpt_div32(u32 dividend, u32 divisor, u32 *quotient, u32 *fraction)
{
 u32 remainder;
 u32 q, f = 0;
 int i;

 if (0 == divisor)
  return -1;

 q = dividend / divisor;
 remainder = dividend - q * divisor;

 for (i = 0; i < 31; i++) {
  remainder <<= 1;
  if (remainder >= divisor) {
   f += 1;
   remainder -= divisor;
  }
  f <<= 1;
 }

 *quotient = q;
 *fraction = f;

 return 0;
}
