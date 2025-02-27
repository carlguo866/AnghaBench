
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_3__ {struct clk_hw hw; } ;
struct ti_adpll_clkout_data {TYPE_1__ gate; } ;
struct TYPE_4__ {int (* enable ) (struct clk_hw*) ;} ;


 int __clk_hw_set_clk (struct clk_hw*,struct clk_hw*) ;
 TYPE_2__ clk_gate_ops ;
 int stub1 (struct clk_hw*) ;
 struct ti_adpll_clkout_data* to_clkout (struct clk_hw*) ;

__attribute__((used)) static int ti_adpll_clkout_enable(struct clk_hw *hw)
{
 struct ti_adpll_clkout_data *co = to_clkout(hw);
 struct clk_hw *gate_hw = &co->gate.hw;

 __clk_hw_set_clk(gate_hw, hw);

 return clk_gate_ops.enable(gate_hw);
}
