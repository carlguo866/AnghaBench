
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lynxfb_crtc {scalar_t__ channel; scalar_t__ oScreen; } ;
struct fb_var_screeninfo {int xoffset; scalar_t__ xres; scalar_t__ xres_virtual; int yoffset; scalar_t__ yres; scalar_t__ yres_virtual; int bits_per_pixel; } ;
struct TYPE_2__ {int line_length; } ;
struct fb_info {TYPE_1__ fix; } ;


 int CRT_FB_ADDRESS ;
 int CRT_FB_ADDRESS_ADDRESS_MASK ;
 int EINVAL ;
 int PANEL_FB_ADDRESS ;
 int PANEL_FB_ADDRESS_ADDRESS_MASK ;
 int peek32 (int ) ;
 int poke32 (int ,int) ;
 scalar_t__ sm750_primary ;

int hw_sm750_pan_display(struct lynxfb_crtc *crtc,
    const struct fb_var_screeninfo *var,
    const struct fb_info *info)
{
 u32 total;

 if ((var->xoffset + var->xres > var->xres_virtual) ||
     (var->yoffset + var->yres > var->yres_virtual)) {
  return -EINVAL;
 }

 total = var->yoffset * info->fix.line_length +
  ((var->xoffset * var->bits_per_pixel) >> 3);
 total += crtc->oScreen;
 if (crtc->channel == sm750_primary) {
  poke32(PANEL_FB_ADDRESS,
         peek32(PANEL_FB_ADDRESS) |
         (total & PANEL_FB_ADDRESS_ADDRESS_MASK));
 } else {
  poke32(CRT_FB_ADDRESS,
         peek32(CRT_FB_ADDRESS) |
         (total & CRT_FB_ADDRESS_ADDRESS_MASK));
 }
 return 0;
}
