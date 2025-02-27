
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct clk_sysctrl {size_t parent_index; int * reg_bits; int * reg_mask; scalar_t__* reg_sel; } ;
struct clk_hw {int dummy; } ;


 int ab8500_sysctrl_clear (scalar_t__,int ) ;
 int ab8500_sysctrl_write (scalar_t__,int ,int ) ;
 struct clk_sysctrl* to_clk_sysctrl (struct clk_hw*) ;

__attribute__((used)) static int clk_sysctrl_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_sysctrl *clk = to_clk_sysctrl(hw);
 u8 old_index = clk->parent_index;
 int ret = 0;

 if (clk->reg_sel[old_index]) {
  ret = ab8500_sysctrl_clear(clk->reg_sel[old_index],
     clk->reg_mask[old_index]);
  if (ret)
   return ret;
 }

 if (clk->reg_sel[index]) {
  ret = ab8500_sysctrl_write(clk->reg_sel[index],
     clk->reg_mask[index],
     clk->reg_bits[index]);
  if (ret) {
   if (clk->reg_sel[old_index])
    ab8500_sysctrl_write(clk->reg_sel[old_index],
      clk->reg_mask[old_index],
      clk->reg_bits[old_index]);
   return ret;
  }
 }
 clk->parent_index = index;

 return ret;
}
