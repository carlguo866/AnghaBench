
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_divider {int div_hw; int common; } ;
struct clk_hw {int dummy; } ;


 struct owl_divider* hw_to_owl_divider (struct clk_hw*) ;
 unsigned long owl_divider_helper_recalc_rate (int *,int *,unsigned long) ;

__attribute__((used)) static unsigned long owl_divider_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 struct owl_divider *div = hw_to_owl_divider(hw);

 return owl_divider_helper_recalc_rate(&div->common,
           &div->div_hw, parent_rate);
}
