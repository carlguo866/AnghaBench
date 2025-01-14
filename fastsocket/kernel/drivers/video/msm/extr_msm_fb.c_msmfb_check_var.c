
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_var_screeninfo {scalar_t__ xres; scalar_t__ yres; scalar_t__ xres_virtual; scalar_t__ yres_virtual; scalar_t__ xoffset; scalar_t__ bits_per_pixel; scalar_t__ grayscale; } ;
struct TYPE_2__ {scalar_t__ xres; scalar_t__ yres; scalar_t__ xres_virtual; scalar_t__ yres_virtual; scalar_t__ xoffset; scalar_t__ bits_per_pixel; scalar_t__ grayscale; } ;
struct fb_info {TYPE_1__ var; } ;


 int EINVAL ;

__attribute__((used)) static int msmfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
{
 if ((var->xres != info->var.xres) ||
     (var->yres != info->var.yres) ||
     (var->xres_virtual != info->var.xres_virtual) ||
     (var->yres_virtual != info->var.yres_virtual) ||
     (var->xoffset != info->var.xoffset) ||
     (var->bits_per_pixel != info->var.bits_per_pixel) ||
     (var->grayscale != info->var.grayscale))
   return -EINVAL;
 return 0;
}
