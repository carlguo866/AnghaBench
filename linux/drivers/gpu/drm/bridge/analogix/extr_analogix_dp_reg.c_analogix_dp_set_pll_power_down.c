
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct analogix_dp_device {scalar_t__ reg_base; TYPE_1__* plat_data; } ;
struct TYPE_2__ {int dev_type; } ;


 scalar_t__ ANALOGIX_DP_PD ;
 scalar_t__ ANALOGIX_DP_PLL_CTL ;
 scalar_t__ DP_PLL_PD ;
 scalar_t__ RK_PLL_PD ;
 scalar_t__ is_rockchip (int ) ;
 scalar_t__ readl (scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

void analogix_dp_set_pll_power_down(struct analogix_dp_device *dp, bool enable)
{
 u32 reg;
 u32 mask = DP_PLL_PD;
 u32 pd_addr = ANALOGIX_DP_PLL_CTL;

 if (dp->plat_data && is_rockchip(dp->plat_data->dev_type)) {
  pd_addr = ANALOGIX_DP_PD;
  mask = RK_PLL_PD;
 }

 reg = readl(dp->reg_base + pd_addr);
 if (enable)
  reg |= mask;
 else
  reg &= ~mask;
 writel(reg, dp->reg_base + pd_addr);
}
