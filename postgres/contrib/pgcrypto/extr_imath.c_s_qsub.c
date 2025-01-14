
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int mp_word ;
typedef unsigned int mp_size ;
typedef TYPE_1__* mp_int ;
typedef unsigned int mp_digit ;
struct TYPE_6__ {int sign; } ;


 int CLAMP (TYPE_1__*) ;
 unsigned int LOWER_HALF (int) ;
 unsigned int* MP_DIGITS (TYPE_1__*) ;
 unsigned int MP_DIGIT_BIT ;
 scalar_t__ MP_DIGIT_MAX ;
 int MP_ZPOS ;
 scalar_t__ UPPER_HALF (int) ;
 int assert (int) ;
 int s_pad (TYPE_1__*,unsigned int) ;

__attribute__((used)) static int
s_qsub(mp_int z, mp_size p2)
{
 mp_digit hi = (1u << (p2 % MP_DIGIT_BIT)),
      *zp;
 mp_size tdig = (p2 / MP_DIGIT_BIT),
    pos;
 mp_word w = 0;

 if (!s_pad(z, tdig + 1))
  return 0;

 for (pos = 0, zp = MP_DIGITS(z); pos < tdig; ++pos, ++zp)
 {
  w = ((mp_word) MP_DIGIT_MAX + 1) - w - (mp_word) *zp;

  *zp = LOWER_HALF(w);
  w = UPPER_HALF(w) ? 0 : 1;
 }

 w = ((mp_word) MP_DIGIT_MAX + 1 + hi) - w - (mp_word) *zp;
 *zp = LOWER_HALF(w);

 assert(UPPER_HALF(w) != 0);

 z->sign = MP_ZPOS;
 CLAMP(z);

 return 1;
}
