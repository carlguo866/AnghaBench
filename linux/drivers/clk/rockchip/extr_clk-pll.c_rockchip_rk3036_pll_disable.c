
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_clk_pll {scalar_t__ reg_base; } ;
struct clk_hw {int dummy; } ;


 int HIWORD_UPDATE (int ,int ,int ) ;
 scalar_t__ RK3036_PLLCON (int) ;
 int RK3036_PLLCON1_PWRDOWN ;
 struct rockchip_clk_pll* to_rockchip_clk_pll (struct clk_hw*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void rockchip_rk3036_pll_disable(struct clk_hw *hw)
{
 struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);

 writel(HIWORD_UPDATE(RK3036_PLLCON1_PWRDOWN,
        RK3036_PLLCON1_PWRDOWN, 0),
        pll->reg_base + RK3036_PLLCON(1));
}
