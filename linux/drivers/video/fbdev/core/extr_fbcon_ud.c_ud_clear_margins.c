
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int width; unsigned int height; } ;
struct vc_data {unsigned int vc_cols; unsigned int vc_rows; TYPE_1__ vc_font; } ;
struct TYPE_5__ {unsigned int xres; unsigned int yres; unsigned int yres_virtual; int xoffset; scalar_t__ yoffset; } ;
struct fb_info {TYPE_3__* fbops; TYPE_2__ var; } ;
struct fb_fillrect {int color; unsigned int width; unsigned int height; int dx; scalar_t__ dy; int rop; } ;
struct TYPE_6__ {int (* fb_fillrect ) (struct fb_info*,struct fb_fillrect*) ;} ;


 int ROP_COPY ;
 int stub1 (struct fb_info*,struct fb_fillrect*) ;
 int stub2 (struct fb_info*,struct fb_fillrect*) ;

__attribute__((used)) static void ud_clear_margins(struct vc_data *vc, struct fb_info *info,
        int color, int bottom_only)
{
 unsigned int cw = vc->vc_font.width;
 unsigned int ch = vc->vc_font.height;
 unsigned int rw = info->var.xres - (vc->vc_cols*cw);
 unsigned int bh = info->var.yres - (vc->vc_rows*ch);
 struct fb_fillrect region;

 region.color = color;
 region.rop = ROP_COPY;

 if (rw && !bottom_only) {
  region.dy = 0;
  region.dx = info->var.xoffset;
  region.width = rw;
  region.height = info->var.yres_virtual;
  info->fbops->fb_fillrect(info, &region);
 }

 if (bh) {
  region.dy = info->var.yoffset;
  region.dx = info->var.xoffset;
                region.height = bh;
                region.width = info->var.xres;
  info->fbops->fb_fillrect(info, &region);
 }
}
