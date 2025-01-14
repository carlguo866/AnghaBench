
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int yres; int upper_margin; int lower_margin; int vsync_len; int xres; int left_margin; int right_margin; int hsync_len; } ;
struct fb_info {TYPE_1__ var; struct ep93xx_fbi* par; } ;
struct ep93xx_fbi {int dummy; } ;


 int EP93XXFB_HACTIVE ;
 int EP93XXFB_HBLANK ;
 int EP93XXFB_HCLK ;
 int EP93XXFB_HCLKS_TOTAL ;
 int EP93XXFB_HSYNC ;
 int EP93XXFB_LINE_CARRY ;
 int EP93XXFB_VACTIVE ;
 int EP93XXFB_VBLANK ;
 int EP93XXFB_VCLK ;
 int EP93XXFB_VLINES_TOTAL ;
 int EP93XXFB_VSYNC ;
 int ep93xxfb_out_locked (struct ep93xx_fbi*,int,int ) ;

__attribute__((used)) static void ep93xxfb_set_timing(struct fb_info *info)
{
 struct ep93xx_fbi *fbi = info->par;
 unsigned int vlines_total, hclks_total, start, stop;

 vlines_total = info->var.yres + info->var.upper_margin +
  info->var.lower_margin + info->var.vsync_len - 1;

 hclks_total = info->var.xres + info->var.left_margin +
  info->var.right_margin + info->var.hsync_len - 1;

 ep93xxfb_out_locked(fbi, vlines_total, EP93XXFB_VLINES_TOTAL);
 ep93xxfb_out_locked(fbi, hclks_total, EP93XXFB_HCLKS_TOTAL);

 start = vlines_total;
 stop = vlines_total - info->var.vsync_len;
 ep93xxfb_out_locked(fbi, start | (stop << 16), EP93XXFB_VSYNC);

 start = vlines_total - info->var.vsync_len - info->var.upper_margin;
 stop = info->var.lower_margin - 1;
 ep93xxfb_out_locked(fbi, start | (stop << 16), EP93XXFB_VBLANK);
 ep93xxfb_out_locked(fbi, start | (stop << 16), EP93XXFB_VACTIVE);

 start = vlines_total;
 stop = vlines_total + 1;
 ep93xxfb_out_locked(fbi, start | (stop << 16), EP93XXFB_VCLK);

 start = hclks_total;
 stop = hclks_total - info->var.hsync_len;
 ep93xxfb_out_locked(fbi, start | (stop << 16), EP93XXFB_HSYNC);

 start = hclks_total - info->var.hsync_len - info->var.left_margin;
 stop = info->var.right_margin - 1;
 ep93xxfb_out_locked(fbi, start | (stop << 16), EP93XXFB_HBLANK);
 ep93xxfb_out_locked(fbi, start | (stop << 16), EP93XXFB_HACTIVE);

 start = hclks_total;
 stop = hclks_total;
 ep93xxfb_out_locked(fbi, start | (stop << 16), EP93XXFB_HCLK);

 ep93xxfb_out_locked(fbi, 0x0, EP93XXFB_LINE_CARRY);
}
