
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint64_t ;



__attribute__((used)) static int _ccv_nnc_lssc_back_bitmask(const int input_size, const int output_size, const uint64_t* const input_bitmasks, const int input_bitmask_size, const uint64_t* const output_bitmasks, const int output_bitmask_size)
{
 int i, j;
 int input_flag = 0;
 int input_bitcount = 0;
 for (i = 0; i < input_bitmask_size; i++)
 {
  for (j = 0; j < 64; j++)
   if (input_bitmasks[i] & (uint64_t)1 << j)
   {
    if (input_flag)
     return 0;
   } else
    break;
  input_bitcount += j;
  if (j < 64)
   input_flag = 1;

  for (; j < 64; j++)
   if (input_bitmasks[i] & (uint64_t)1 << j)
    return 0;
 }
 int output_flag = 0;
 int output_bitcount = 0;
 for (i = 0; i < output_bitmask_size; i++)
 {
  for (j = 0; j < 64; j++)
   if (output_bitmasks[i] & (uint64_t)1 << j)
   {
    if (output_flag)
     return 0;
   } else
    break;
  output_bitcount += j;
  if (j < 64)
   output_flag = 1;
  for (; j < 64; j++)
   if (output_bitmasks[i] & (uint64_t)1 << j)
    return 0;
 }
 return output_bitcount <= input_bitcount && output_bitcount == output_size;
}
