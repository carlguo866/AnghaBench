
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct analogix_dp_device {scalar_t__ reg_base; } ;


 scalar_t__ ANALOGIX_DP_SYS_CTL_3 ;
 int F_HPD ;
 int HPD_CTRL ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void analogix_dp_force_hpd(struct analogix_dp_device *dp)
{
 u32 reg;

 reg = readl(dp->reg_base + ANALOGIX_DP_SYS_CTL_3);
 reg = (F_HPD | HPD_CTRL);
 writel(reg, dp->reg_base + ANALOGIX_DP_SYS_CTL_3);
}
