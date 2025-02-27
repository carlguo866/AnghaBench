
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501fb_par {struct sm501fb_info* info; } ;
struct sm501fb_info {scalar_t__ regs; } ;
struct fb_var_screeninfo {int xoffset; int xres_virtual; int yoffset; int yres_virtual; } ;
struct fb_info {struct sm501fb_par* par; } ;


 scalar_t__ SM501_DC_PANEL_FB_HEIGHT ;
 scalar_t__ SM501_DC_PANEL_FB_WIDTH ;
 int sm501fb_sync_regs (struct sm501fb_info*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int sm501fb_pan_pnl(struct fb_var_screeninfo *var,
      struct fb_info *info)
{
 struct sm501fb_par *par = info->par;
 struct sm501fb_info *fbi = par->info;
 unsigned long reg;

 reg = var->xoffset | (var->xres_virtual << 16);
 writel(reg, fbi->regs + SM501_DC_PANEL_FB_WIDTH);

 reg = var->yoffset | (var->yres_virtual << 16);
 writel(reg, fbi->regs + SM501_DC_PANEL_FB_HEIGHT);

 sm501fb_sync_regs(fbi);
 return 0;
}
