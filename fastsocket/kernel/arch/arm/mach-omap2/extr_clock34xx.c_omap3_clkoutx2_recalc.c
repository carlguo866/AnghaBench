
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpll_data {int enable_mask; int control_reg; } ;
struct clk {unsigned long rate; struct clk* parent; struct dpll_data* dpll_data; } ;


 int OMAP3XXX_EN_DPLL_LOCKED ;
 int WARN_ON (int) ;
 int __ffs (int) ;
 int __raw_readl (int ) ;

__attribute__((used)) static unsigned long omap3_clkoutx2_recalc(struct clk *clk)
{
 const struct dpll_data *dd;
 unsigned long rate;
 u32 v;
 struct clk *pclk;


 pclk = clk->parent;
 while (pclk && !pclk->dpll_data)
  pclk = pclk->parent;


 WARN_ON(!pclk);

 dd = pclk->dpll_data;

 WARN_ON(!dd->enable_mask);

 v = __raw_readl(dd->control_reg) & dd->enable_mask;
 v >>= __ffs(dd->enable_mask);
 if (v != OMAP3XXX_EN_DPLL_LOCKED)
  rate = clk->parent->rate;
 else
  rate = clk->parent->rate * 2;
 return rate;
}
