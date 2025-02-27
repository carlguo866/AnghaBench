
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dw_i2c_dev {scalar_t__ base; int clk; } ;


 scalar_t__ DW_IC_CON ;
 int DW_IC_CON_MASTER ;
 int DW_IC_CON_RESTART_EN ;
 int DW_IC_CON_SLAVE_DISABLE ;
 int DW_IC_CON_SPEED_FAST ;
 scalar_t__ DW_IC_ENABLE ;
 scalar_t__ DW_IC_FS_SCL_HCNT ;
 scalar_t__ DW_IC_FS_SCL_LCNT ;
 scalar_t__ DW_IC_SS_SCL_HCNT ;
 scalar_t__ DW_IC_SS_SCL_LCNT ;
 int clk_get_rate (int ) ;
 int writeb (int ,scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void i2c_dw_init(struct dw_i2c_dev *dev)
{
 u32 input_clock_khz = clk_get_rate(dev->clk) / 1000;
 u16 ic_con;


 writeb(0, dev->base + DW_IC_ENABLE);


 writew((input_clock_khz * 40 / 10000)+1,
   dev->base + DW_IC_SS_SCL_HCNT);
 writew((input_clock_khz * 47 / 10000)+1,
   dev->base + DW_IC_SS_SCL_LCNT);
 writew((input_clock_khz * 6 / 10000)+1,
   dev->base + DW_IC_FS_SCL_HCNT);
 writew((input_clock_khz * 13 / 10000)+1,
   dev->base + DW_IC_FS_SCL_LCNT);


 ic_con = DW_IC_CON_MASTER | DW_IC_CON_SLAVE_DISABLE |
  DW_IC_CON_RESTART_EN | DW_IC_CON_SPEED_FAST;
 writew(ic_con, dev->base + DW_IC_CON);
}
