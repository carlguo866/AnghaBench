
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
typedef int u32 ;
struct neofb_par {TYPE_3__* neo2200; } ;
struct TYPE_5__ {int line_length; } ;
struct TYPE_4__ {int bits_per_pixel; } ;
struct fb_info {TYPE_2__ fix; TYPE_1__ var; struct neofb_par* par; } ;
struct fb_copyarea {int sx; int sy; int dx; int dy; int height; int width; } ;
struct TYPE_6__ {int xyExt; int dstStart; int srcStart; int bltCntl; } ;


 int NEO_BC0_DST_Y_DEC ;
 int NEO_BC0_SRC_Y_DEC ;
 int NEO_BC0_X_DEC ;
 int NEO_BC3_FIFO_EN ;
 int NEO_BC3_SKIP_MAPPING ;
 int neo2200_wait_fifo (struct fb_info*,int) ;
 int writel (int,int *) ;

__attribute__((used)) static void
neo2200_copyarea(struct fb_info *info, const struct fb_copyarea *area)
{
 u32 sx = area->sx, sy = area->sy, dx = area->dx, dy = area->dy;
 struct neofb_par *par = info->par;
 u_long src, dst, bltCntl;

 bltCntl = NEO_BC3_FIFO_EN | NEO_BC3_SKIP_MAPPING | 0x0C0000;

 if ((dy > sy) || ((dy == sy) && (dx > sx))) {

  sy += (area->height - 1);
  dy += (area->height - 1);
  sx += (area->width - 1);
  dx += (area->width - 1);

  bltCntl |= NEO_BC0_X_DEC | NEO_BC0_DST_Y_DEC | NEO_BC0_SRC_Y_DEC;
 }

 src = sx * (info->var.bits_per_pixel >> 3) + sy*info->fix.line_length;
 dst = dx * (info->var.bits_per_pixel >> 3) + dy*info->fix.line_length;

 neo2200_wait_fifo(info, 4);


 writel(bltCntl, &par->neo2200->bltCntl);

 writel(src, &par->neo2200->srcStart);
 writel(dst, &par->neo2200->dstStart);
 writel((area->height << 16) | (area->width & 0xffff),
        &par->neo2200->xyExt);
}
