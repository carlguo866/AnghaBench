
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int (* generate ) (TYPE_1__ const**,int*,size_t) ;} ;
typedef TYPE_1__ br_prng_class ;


 int stub1 (TYPE_1__ const**,int*,size_t) ;

__attribute__((used)) static void
mkrand(const br_prng_class **rng, uint32_t *x, uint32_t esize)
{
 size_t u, len;
 unsigned m;

 len = (esize + 31) >> 5;
 (*rng)->generate(rng, x + 1, len * sizeof(uint32_t));
 for (u = 1; u < len; u ++) {
  x[u] &= 0x7FFFFFFF;
 }
 m = esize & 31;
 if (m == 0) {
  x[len] &= 0x7FFFFFFF;
 } else {
  x[len] &= 0x7FFFFFFF >> (31 - m);
 }
}
