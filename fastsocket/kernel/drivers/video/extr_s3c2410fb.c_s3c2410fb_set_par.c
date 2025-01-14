
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_var_screeninfo {int bits_per_pixel; int xres_virtual; } ;
struct TYPE_2__ {int line_length; int visual; } ;
struct fb_info {TYPE_1__ fix; struct fb_var_screeninfo var; } ;


 int FB_VISUAL_MONO01 ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 int s3c2410fb_activate_var (struct fb_info*) ;

__attribute__((used)) static int s3c2410fb_set_par(struct fb_info *info)
{
 struct fb_var_screeninfo *var = &info->var;

 switch (var->bits_per_pixel) {
 case 32:
 case 16:
 case 12:
  info->fix.visual = FB_VISUAL_TRUECOLOR;
  break;
 case 1:
  info->fix.visual = FB_VISUAL_MONO01;
  break;
 default:
  info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
  break;
 }

 info->fix.line_length = (var->xres_virtual * var->bits_per_pixel) / 8;



 s3c2410fb_activate_var(info);
 return 0;
}
