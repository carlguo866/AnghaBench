
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int* png_const_bytep ;
typedef int png_byte ;



__attribute__((used)) static unsigned int
sample(png_const_bytep row, png_byte colour_type, png_byte bit_depth,
    png_uint_32 x, unsigned int sample_index, int swap16, int littleendian)
{
   png_uint_32 bit_index, result;


   x *= bit_depth;
   bit_index = x;

   if ((colour_type & 1) == 0)
   {
      if (colour_type & 2)
         bit_index *= 3;

      if (colour_type & 4)
         bit_index += x;


      if (colour_type & (2+4))
         bit_index += sample_index * bit_depth;
   }


   row += bit_index >> 3;
   result = *row;

   if (bit_depth == 8)
      return result;

   else if (bit_depth > 8)
   {
      if (swap16)
         return (*++row << 8) + result;
      else
         return (result << 8) + *++row;
   }





   bit_index &= 7;

   if (!littleendian)
      bit_index = 8-bit_index-bit_depth;

   return (result >> bit_index) & ((1U<<bit_depth)-1);
}
