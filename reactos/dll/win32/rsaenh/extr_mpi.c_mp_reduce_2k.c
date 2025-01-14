
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_int ;
typedef int mp_digit ;


 scalar_t__ MP_LT ;
 int MP_OKAY ;
 int mp_clear (int *) ;
 scalar_t__ mp_cmp_mag (int *,int const*) ;
 int mp_count_bits (int const*) ;
 int mp_div_2d (int *,int,int *,int *) ;
 int mp_init (int *) ;
 int mp_mul_d (int *,int,int *) ;
 int s_mp_add (int *,int *,int *) ;
 int s_mp_sub (int *,int const*,int *) ;

int
mp_reduce_2k(mp_int *a, const mp_int *n, mp_digit d)
{
   mp_int q;
   int p, res;

   if ((res = mp_init(&q)) != MP_OKAY) {
      return res;
   }

   p = mp_count_bits(n);
top:

   if ((res = mp_div_2d(a, p, &q, a)) != MP_OKAY) {
      goto ERR;
   }

   if (d != 1) {

      if ((res = mp_mul_d(&q, d, &q)) != MP_OKAY) {
         goto ERR;
      }
   }


   if ((res = s_mp_add(a, &q, a)) != MP_OKAY) {
      goto ERR;
   }

   if (mp_cmp_mag(a, n) != MP_LT) {
      s_mp_sub(a, n, a);
      goto top;
   }

ERR:
   mp_clear(&q);
   return res;
}
