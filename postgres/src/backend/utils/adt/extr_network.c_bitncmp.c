
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HIGHBIT_SET (unsigned int) ;
 int memcmp (unsigned char const*,unsigned char const*,int) ;

int
bitncmp(const unsigned char *l, const unsigned char *r, int n)
{
 unsigned int lb,
    rb;
 int x,
    b;

 b = n / 8;
 x = memcmp(l, r, b);
 if (x || (n % 8) == 0)
  return x;

 lb = l[b];
 rb = r[b];
 for (b = n % 8; b > 0; b--)
 {
  if (IS_HIGHBIT_SET(lb) != IS_HIGHBIT_SET(rb))
  {
   if (IS_HIGHBIT_SET(lb))
    return 1;
   return -1;
  }
  lb <<= 1;
  rb <<= 1;
 }
 return 0;
}
