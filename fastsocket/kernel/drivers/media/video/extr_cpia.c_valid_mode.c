
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ VIDEO_PALETTE_GREY ;
 scalar_t__ VIDEO_PALETTE_RGB24 ;
 scalar_t__ VIDEO_PALETTE_RGB32 ;
 scalar_t__ VIDEO_PALETTE_RGB555 ;
 scalar_t__ VIDEO_PALETTE_RGB565 ;
 scalar_t__ VIDEO_PALETTE_UYVY ;
 scalar_t__ VIDEO_PALETTE_YUV422 ;
 scalar_t__ VIDEO_PALETTE_YUYV ;
 scalar_t__ colorspace_conv ;

__attribute__((used)) static inline int valid_mode(u16 palette, u16 depth)
{
 if ((palette == VIDEO_PALETTE_YUV422 && depth == 16) ||
     (palette == VIDEO_PALETTE_YUYV && depth == 16))
  return 1;

 if (colorspace_conv)
  return (palette == VIDEO_PALETTE_GREY && depth == 8) ||
         (palette == VIDEO_PALETTE_RGB555 && depth == 16) ||
         (palette == VIDEO_PALETTE_RGB565 && depth == 16) ||
         (palette == VIDEO_PALETTE_RGB24 && depth == 24) ||
         (palette == VIDEO_PALETTE_RGB32 && depth == 32) ||
         (palette == VIDEO_PALETTE_UYVY && depth == 16);

 return 0;
}
