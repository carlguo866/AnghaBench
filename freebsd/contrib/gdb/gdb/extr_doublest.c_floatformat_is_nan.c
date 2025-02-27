
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floatformat {long exp_nan; unsigned int exp_start; unsigned int exp_len; int man_len; unsigned int man_start; scalar_t__ intbit; int totalsize; int byteorder; } ;


 scalar_t__ floatformat_intbit_yes ;
 int gdb_assert (int ) ;
 void* get_field (unsigned char*,int ,int ,unsigned int,unsigned int) ;
 unsigned int min (int,int) ;

int
floatformat_is_nan (const struct floatformat *fmt, char *val)
{
  unsigned char *uval = (unsigned char *) val;
  long exponent;
  unsigned long mant;
  unsigned int mant_bits, mant_off;
  int mant_bits_left;

  gdb_assert (fmt != ((void*)0));

  if (! fmt->exp_nan)
    return 0;

  exponent = get_field (uval, fmt->byteorder, fmt->totalsize,
   fmt->exp_start, fmt->exp_len);

  if (exponent != fmt->exp_nan)
    return 0;

  mant_bits_left = fmt->man_len;
  mant_off = fmt->man_start;

  while (mant_bits_left > 0)
    {
      mant_bits = min (mant_bits_left, 32);

      mant = get_field (uval, fmt->byteorder, fmt->totalsize,
   mant_off, mant_bits);


      if (mant_off == fmt->man_start
   && fmt->intbit == floatformat_intbit_yes)
 mant &= ~(1 << (mant_bits - 1));

      if (mant)
 return 1;

      mant_off += mant_bits;
      mant_bits_left -= mant_bits;
    }

  return 0;
}
