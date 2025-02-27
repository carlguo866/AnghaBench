
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sm_addr; } ;
struct sm501fb_par {scalar_t__ cursor_regs; TYPE_2__ cursor; struct sm501fb_info* info; } ;
struct sm501fb_info {scalar_t__ regs; } ;
struct TYPE_3__ {int smem_len; } ;
struct fb_info {TYPE_1__ fix; struct sm501fb_par* par; } ;


 int SM501_MEMF_CURSOR ;
 scalar_t__ SM501_OFF_HWC_ADDR ;
 scalar_t__ SM501_OFF_HWC_COLOR_1_2 ;
 scalar_t__ SM501_OFF_HWC_COLOR_3 ;
 scalar_t__ SM501_OFF_HWC_LOC ;
 int sm501_alloc_mem (struct sm501fb_info*,TYPE_2__*,int ,int,int ) ;
 int sm501fb_sync_regs (struct sm501fb_info*) ;
 int smc501_writel (int,scalar_t__) ;

__attribute__((used)) static int sm501_init_cursor(struct fb_info *fbi, unsigned int reg_base)
{
 struct sm501fb_par *par;
 struct sm501fb_info *info;
 int ret;

 if (fbi == ((void*)0))
  return 0;

 par = fbi->par;
 info = par->info;

 par->cursor_regs = info->regs + reg_base;

 ret = sm501_alloc_mem(info, &par->cursor, SM501_MEMF_CURSOR, 1024,
         fbi->fix.smem_len);
 if (ret < 0)
  return ret;



 smc501_writel(par->cursor.sm_addr,
   par->cursor_regs + SM501_OFF_HWC_ADDR);

 smc501_writel(0x00, par->cursor_regs + SM501_OFF_HWC_LOC);
 smc501_writel(0x00, par->cursor_regs + SM501_OFF_HWC_COLOR_1_2);
 smc501_writel(0x00, par->cursor_regs + SM501_OFF_HWC_COLOR_3);
 sm501fb_sync_regs(info);

 return 0;
}
