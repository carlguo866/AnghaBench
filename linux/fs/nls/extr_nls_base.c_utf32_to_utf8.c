
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long unicode_t ;
typedef scalar_t__ u8 ;
struct utf8_table {unsigned long lmask; int shift; unsigned long cval; scalar_t__ cmask; } ;


 unsigned long SURROGATE_MASK ;
 unsigned long SURROGATE_PAIR ;
 unsigned long UNICODE_MAX ;
 struct utf8_table* utf8_table ;

int utf32_to_utf8(unicode_t u, u8 *s, int maxout)
{
 unsigned long l;
 int c, nc;
 const struct utf8_table *t;

 if (!s)
  return 0;

 l = u;
 if (l > UNICODE_MAX || (l & SURROGATE_MASK) == SURROGATE_PAIR)
  return -1;

 nc = 0;
 for (t = utf8_table; t->cmask && maxout; t++, maxout--) {
  nc++;
  if (l <= t->lmask) {
   c = t->shift;
   *s = (u8) (t->cval | (l >> c));
   while (c > 0) {
    c -= 6;
    s++;
    *s = (u8) (0x80 | ((l >> c) & 0x3F));
   }
   return nc;
  }
 }
 return -1;
}
