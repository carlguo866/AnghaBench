
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_color_lut {int red; int green; int blue; } ;



__attribute__((used)) static u32 i965_lut_10p6_udw(const struct drm_color_lut *color)
{
 return (color->red >> 8) << 16 |
  (color->green >> 8) << 8 |
  (color->blue >> 8);
}
