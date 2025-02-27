
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct samsung_clk_pll {scalar_t__ con_reg; } ;
struct clk_hw {int dummy; } ;
typedef int s16 ;


 int PLL36XX_KDIV_MASK ;
 int PLL36XX_MDIV_MASK ;
 int PLL36XX_MDIV_SHIFT ;
 int PLL36XX_PDIV_MASK ;
 int PLL36XX_PDIV_SHIFT ;
 int PLL36XX_SDIV_MASK ;
 int PLL36XX_SDIV_SHIFT ;
 int do_div (int,int) ;
 int readl_relaxed (scalar_t__) ;
 struct samsung_clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static unsigned long samsung_pll36xx_recalc_rate(struct clk_hw *hw,
    unsigned long parent_rate)
{
 struct samsung_clk_pll *pll = to_clk_pll(hw);
 u32 mdiv, pdiv, sdiv, pll_con0, pll_con1;
 s16 kdiv;
 u64 fvco = parent_rate;

 pll_con0 = readl_relaxed(pll->con_reg);
 pll_con1 = readl_relaxed(pll->con_reg + 4);
 mdiv = (pll_con0 >> PLL36XX_MDIV_SHIFT) & PLL36XX_MDIV_MASK;
 pdiv = (pll_con0 >> PLL36XX_PDIV_SHIFT) & PLL36XX_PDIV_MASK;
 sdiv = (pll_con0 >> PLL36XX_SDIV_SHIFT) & PLL36XX_SDIV_MASK;
 kdiv = (s16)(pll_con1 & PLL36XX_KDIV_MASK);

 fvco *= (mdiv << 16) + kdiv;
 do_div(fvco, (pdiv << sdiv));
 fvco >>= 16;

 return (unsigned long)fvco;
}
