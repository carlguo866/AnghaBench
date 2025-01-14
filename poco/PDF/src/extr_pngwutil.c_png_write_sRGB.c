
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_structp ;
typedef int png_size_t ;
typedef scalar_t__ png_byte ;


 int PNG_sRGB ;
 int PNG_sRGB_INTENT_LAST ;
 int png_debug (int,char*) ;
 int png_sRGB ;
 int png_warning (int ,char*) ;
 int png_write_chunk (int ,int ,scalar_t__*,int ) ;

void
png_write_sRGB(png_structp png_ptr, int srgb_intent)
{



   png_byte buf[1];

   png_debug(1, "in png_write_sRGB\n");
   if(srgb_intent >= PNG_sRGB_INTENT_LAST)
         png_warning(png_ptr,
            "Invalid sRGB rendering intent specified");
   buf[0]=(png_byte)srgb_intent;
   png_write_chunk(png_ptr, png_sRGB, buf, (png_size_t)1);
}
