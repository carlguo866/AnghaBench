
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcon_ch1_clk {int reg; } ;
struct clk_hw {int dummy; } ;


 int TCON_CH1_SCLK1_HALF_BIT ;
 int TCON_CH1_SCLK2_DIV_MASK ;
 struct tcon_ch1_clk* hw_to_tclk (struct clk_hw*) ;
 int readl (int ) ;

__attribute__((used)) static unsigned long tcon_ch1_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 struct tcon_ch1_clk *tclk = hw_to_tclk(hw);
 u32 reg;

 reg = readl(tclk->reg);

 parent_rate /= (reg & TCON_CH1_SCLK2_DIV_MASK) + 1;

 if (reg & TCON_CH1_SCLK1_HALF_BIT)
  parent_rate /= 2;

 return parent_rate;
}
