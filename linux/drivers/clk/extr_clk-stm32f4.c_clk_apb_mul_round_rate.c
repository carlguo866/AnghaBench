
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_apb_mul {int bit_idx; } ;


 int BIT (int ) ;
 int CLK_SET_RATE_PARENT ;
 scalar_t__ STM32F4_RCC_CFGR ;
 scalar_t__ base ;
 int clk_hw_get_flags (struct clk_hw*) ;
 int clk_hw_get_parent (struct clk_hw*) ;
 unsigned long clk_hw_round_rate (int ,unsigned long) ;
 int readl (scalar_t__) ;
 struct clk_apb_mul* to_clk_apb_mul (struct clk_hw*) ;

__attribute__((used)) static long clk_apb_mul_round_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long *prate)
{
 struct clk_apb_mul *am = to_clk_apb_mul(hw);
 unsigned long mult = 1;

 if (readl(base + STM32F4_RCC_CFGR) & BIT(am->bit_idx))
  mult = 2;

 if (clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) {
  unsigned long best_parent = rate / mult;

  *prate = clk_hw_round_rate(clk_hw_get_parent(hw), best_parent);
 }

 return *prate * mult;
}
