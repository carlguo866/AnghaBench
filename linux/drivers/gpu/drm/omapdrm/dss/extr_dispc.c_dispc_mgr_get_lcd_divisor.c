
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dispc_device {int dummy; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DISPC_DIVISORo (int) ;
 int FLD_GET (int ,int,int) ;
 int dispc_read_reg (struct dispc_device*,int ) ;

__attribute__((used)) static void dispc_mgr_get_lcd_divisor(struct dispc_device *dispc,
          enum omap_channel channel, int *lck_div,
          int *pck_div)
{
 u32 l;
 l = dispc_read_reg(dispc, DISPC_DIVISORo(channel));
 *lck_div = FLD_GET(l, 23, 16);
 *pck_div = FLD_GET(l, 7, 0);
}
