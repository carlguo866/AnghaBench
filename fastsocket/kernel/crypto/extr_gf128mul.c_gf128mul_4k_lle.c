
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct gf128mul_4k {int * t; } ;
typedef int be128 ;


 int be128_xor (int *,int *,int *) ;
 int gf128mul_x8_lle (int *) ;

void gf128mul_4k_lle(be128 *a, struct gf128mul_4k *t)
{
 u8 *ap = (u8 *)a;
 be128 r[1];
 int i = 15;

 *r = t->t[ap[15]];
 while (i--) {
  gf128mul_x8_lle(r);
  be128_xor(r, r, &t->t[ap[i]]);
 }
 *a = *r;
}
