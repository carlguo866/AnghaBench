
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int bits_per_pixel; } ;
struct fb_info {TYPE_2__ fix; TYPE_1__ var; } ;
struct fb_fillrect {int width; int dx; } ;


 scalar_t__ FB_TYPE_INTERLEAVED_PLANES ;
 int arkfb_iplan_fillrect (struct fb_info*,struct fb_fillrect const*) ;
 int cfb_fillrect (struct fb_info*,struct fb_fillrect const*) ;

__attribute__((used)) static void arkfb_fillrect(struct fb_info *info, const struct fb_fillrect *rect)
{
 if ((info->var.bits_per_pixel == 4)
     && ((rect->width % 8) == 0) && ((rect->dx % 8) == 0)
     && (info->fix.type == FB_TYPE_INTERLEAVED_PLANES))
  arkfb_iplan_fillrect(info, rect);
  else
  cfb_fillrect(info, rect);
}
