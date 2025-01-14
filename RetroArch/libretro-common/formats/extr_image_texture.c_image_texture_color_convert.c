
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
typedef size_t uint32_t ;
struct texture_image {size_t width; size_t height; scalar_t__ pixels; } ;



bool image_texture_color_convert(unsigned r_shift,
      unsigned g_shift, unsigned b_shift, unsigned a_shift,
      struct texture_image *out_img)
{

   if (a_shift != 24 || r_shift != 16 || g_shift != 8 || b_shift != 0)
   {
      uint32_t i;
      uint32_t num_pixels = out_img->width * out_img->height;
      uint32_t *pixels = (uint32_t*)out_img->pixels;

      for (i = 0; i < num_pixels; i++)
      {
         uint32_t col = pixels[i];
         uint8_t a = (uint8_t)(col >> 24);
         uint8_t r = (uint8_t)(col >> 16);
         uint8_t g = (uint8_t)(col >> 8);
         uint8_t b = (uint8_t)(col >> 0);
         pixels[i] = (a << a_shift) |
            (r << r_shift) | (g << g_shift) | (b << b_shift);
      }

      return 1;
   }

   return 0;
}
