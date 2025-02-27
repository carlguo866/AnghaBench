
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LITTLENUM_NUMBER_OF_BITS ;
 int bits_left_in_littlenum ;
 int* littlenum_end ;
 int* littlenum_pointer ;
 int* mask ;

__attribute__((used)) static int
next_bits (int number_of_bits)
{
  int return_value;

  if (littlenum_pointer < littlenum_end)
    return 0;
  if (number_of_bits >= bits_left_in_littlenum)
    {
      return_value = mask[bits_left_in_littlenum] & *littlenum_pointer;
      number_of_bits -= bits_left_in_littlenum;
      return_value <<= number_of_bits;
      bits_left_in_littlenum = LITTLENUM_NUMBER_OF_BITS - number_of_bits;
      littlenum_pointer--;
      if (littlenum_pointer >= littlenum_end)
 return_value |= ((*littlenum_pointer) >> (bits_left_in_littlenum)) & mask[number_of_bits];
    }
  else
    {
      bits_left_in_littlenum -= number_of_bits;
      return_value = mask[number_of_bits] & ((*littlenum_pointer) >> bits_left_in_littlenum);
    }
  return return_value;
}
