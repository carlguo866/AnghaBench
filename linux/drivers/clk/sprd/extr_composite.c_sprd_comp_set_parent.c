
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sprd_comp {int mux; int common; } ;
struct clk_hw {int dummy; } ;


 struct sprd_comp* hw_to_sprd_comp (struct clk_hw*) ;
 int sprd_mux_helper_set_parent (int *,int *,int ) ;

__attribute__((used)) static int sprd_comp_set_parent(struct clk_hw *hw, u8 index)
{
 struct sprd_comp *cc = hw_to_sprd_comp(hw);

 return sprd_mux_helper_set_parent(&cc->common, &cc->mux, index);
}
