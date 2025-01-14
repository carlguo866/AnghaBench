
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULong ;
struct TYPE_5__ {scalar_t__ kind; int ex; int* bits; TYPE_1__* fpi; } ;
struct TYPE_4__ {int nbits; } ;
typedef TYPE_1__ FPI ;
typedef TYPE_2__ FPBits ;


 scalar_t__ STRTOG_Zero ;

__attribute__((used)) static int
fpiprec(FPBits *b)
{
 FPI *fpi;
 ULong *bits;
 int i, j, k, m;

 if (b->kind == STRTOG_Zero)
  return b->ex = 0;
 fpi = b->fpi;
 bits = b->bits;
 for(k = (fpi->nbits - 1) >> 2; k > 0; --k)
  if ((bits[k >> 3] >> 4*(k & 7)) & 0xf) {
   m = k >> 3;
   for(i = 0; i <= m; ++i)
    if (bits[i]) {
     if (i > 0) {
      k -= 8*i;
      b->ex += 32*i;
      for(j = i; j <= m; ++j)
       bits[j-i] = bits[j];
      }
     break;
     }
   for(i = 0; i < 28 && !((bits[0] >> i) & 0xf); i += 4);
   if (i) {
    b->ex += i;
    m = k >> 3;
    k -= (i >> 2);
    for(j = 0;;++j) {
     bits[j] >>= i;
     if (j == m)
      break;
     bits[j] |= bits[j+1] << (32 - i);
     }
    }
   break;
   }
 return k;
 }
