
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g12a_ephy_pll {scalar_t__ base; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ ETH_PLL_CTL0 ;
 scalar_t__ ETH_PLL_CTL1 ;
 scalar_t__ ETH_PLL_CTL2 ;
 scalar_t__ ETH_PLL_CTL3 ;
 scalar_t__ ETH_PLL_CTL4 ;
 scalar_t__ ETH_PLL_CTL5 ;
 scalar_t__ ETH_PLL_CTL6 ;
 scalar_t__ ETH_PLL_CTL7 ;
 struct g12a_ephy_pll* g12a_ephy_pll_to_dev (struct clk_hw*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void g12a_ephy_pll_init(struct clk_hw *hw)
{
 struct g12a_ephy_pll *pll = g12a_ephy_pll_to_dev(hw);


 writel(0x29c0040a, pll->base + ETH_PLL_CTL0);
 writel(0x927e0000, pll->base + ETH_PLL_CTL1);
 writel(0xac5f49e5, pll->base + ETH_PLL_CTL2);
 writel(0x00000000, pll->base + ETH_PLL_CTL3);
 writel(0x00000000, pll->base + ETH_PLL_CTL4);
 writel(0x20200000, pll->base + ETH_PLL_CTL5);
 writel(0x0000c002, pll->base + ETH_PLL_CTL6);
 writel(0x00000023, pll->base + ETH_PLL_CTL7);
}
