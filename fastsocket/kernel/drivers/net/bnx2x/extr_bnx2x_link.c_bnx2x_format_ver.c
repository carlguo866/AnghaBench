
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int EINVAL ;

__attribute__((used)) static int bnx2x_format_ver(u32 num, u8 *str, u16 *len)
{
 u8 *str_ptr = str;
 u32 mask = 0xf0000000;
 u8 shift = 8*4;
 u8 digit;
 u8 remove_leading_zeros = 1;
 if (*len < 10) {

  *str_ptr = '\0';
  (*len)--;
  return -EINVAL;
 }
 while (shift > 0) {

  shift -= 4;
  digit = ((num & mask) >> shift);
  if (digit == 0 && remove_leading_zeros) {
   mask = mask >> 4;
   continue;
  } else if (digit < 0xa)
   *str_ptr = digit + '0';
  else
   *str_ptr = digit - 0xa + 'a';
  remove_leading_zeros = 0;
  str_ptr++;
  (*len)--;
  mask = mask >> 4;
  if (shift == 4*4) {
   *str_ptr = '.';
   str_ptr++;
   (*len)--;
   remove_leading_zeros = 1;
  }
 }
 return 0;
}
