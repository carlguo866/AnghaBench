
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct clk_hw {int dummy; } ;
struct clk_generated {scalar_t__ parent_id; } ;


 int EINVAL ;
 scalar_t__ clk_hw_get_num_parents (struct clk_hw*) ;
 struct clk_generated* to_clk_generated (struct clk_hw*) ;

__attribute__((used)) static int clk_generated_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_generated *gck = to_clk_generated(hw);

 if (index >= clk_hw_get_num_parents(hw))
  return -EINVAL;

 gck->parent_id = index;
 return 0;
}
