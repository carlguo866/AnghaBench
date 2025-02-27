
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_word ;
typedef scalar_t__ mp_size ;
typedef scalar_t__ mp_digit ;


 scalar_t__ LOWER_HALF (int) ;
 int UPPER_HALF (int) ;

__attribute__((used)) static void
s_umul(mp_digit *da, mp_digit *db, mp_digit *dc, mp_size size_a,
    mp_size size_b)
{
 mp_size a,
    b;
 mp_word w;

 for (a = 0; a < size_a; ++a, ++dc, ++da)
 {
  mp_digit *dct = dc;
  mp_digit *dbt = db;

  if (*da == 0)
   continue;

  w = 0;
  for (b = 0; b < size_b; ++b, ++dbt, ++dct)
  {
   w = (mp_word) *da * (mp_word) *dbt + w + (mp_word) *dct;

   *dct = LOWER_HALF(w);
   w = UPPER_HALF(w);
  }

  *dct = (mp_digit) w;
 }
}
