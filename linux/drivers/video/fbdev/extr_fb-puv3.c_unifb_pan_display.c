
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_var_screeninfo {int vmode; scalar_t__ yoffset; scalar_t__ xoffset; } ;
struct TYPE_2__ {scalar_t__ yres_virtual; scalar_t__ xres; scalar_t__ xres_virtual; scalar_t__ yres; scalar_t__ xoffset; scalar_t__ yoffset; int vmode; } ;
struct fb_info {TYPE_1__ var; } ;


 int EINVAL ;
 int FB_VMODE_YWRAP ;

__attribute__((used)) static int unifb_pan_display(struct fb_var_screeninfo *var,
      struct fb_info *info)
{
 if (var->vmode & FB_VMODE_YWRAP) {
  if (var->yoffset < 0
      || var->yoffset >= info->var.yres_virtual
      || var->xoffset)
   return -EINVAL;
 } else {
  if (var->xoffset + info->var.xres > info->var.xres_virtual ||
      var->yoffset + info->var.yres > info->var.yres_virtual)
   return -EINVAL;
 }
 info->var.xoffset = var->xoffset;
 info->var.yoffset = var->yoffset;
 if (var->vmode & FB_VMODE_YWRAP)
  info->var.vmode |= FB_VMODE_YWRAP;
 else
  info->var.vmode &= ~FB_VMODE_YWRAP;
 return 0;
}
