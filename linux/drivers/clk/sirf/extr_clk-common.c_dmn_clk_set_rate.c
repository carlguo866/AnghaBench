
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_dmn {int regofs; } ;


 int BIT (int) ;
 int EINVAL ;
 int WARN_ON (unsigned long) ;
 char* clk_hw_get_name (struct clk_hw*) ;
 int clkc_readl (int ) ;
 int clkc_writel (unsigned int,int ) ;
 int cpu_relax () ;
 scalar_t__ strcmp (char const*,char*) ;
 struct clk_dmn* to_dmnclk (struct clk_hw*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int dmn_clk_set_rate(struct clk_hw *hw, unsigned long rate,
 unsigned long parent_rate)
{
 struct clk_dmn *clk = to_dmnclk(hw);
 unsigned long fin;
 unsigned ratio, wait, hold, reg;
 const char *name = clk_hw_get_name(hw);
 unsigned bits = (strcmp(name, "mem") == 0) ? 3 : 4;

 fin = parent_rate;
 ratio = fin / rate;

 if (unlikely(ratio < 2 || ratio > BIT(bits + 1)))
  return -EINVAL;

 WARN_ON(fin % rate);

 wait = (ratio >> 1) - 1;
 hold = ratio - wait - 2;

 reg = clkc_readl(clk->regofs);
 reg &= ~(((BIT(bits) - 1) << 16) | ((BIT(bits) - 1) << 20));
 reg |= (wait << 16) | (hold << 20) | BIT(25);
 clkc_writel(reg, clk->regofs);


 while (clkc_readl(clk->regofs) & BIT(25))
  cpu_relax();

 return 0;
}
