
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int mtk_cg_clr_bit (struct clk_hw*) ;

__attribute__((used)) static int mtk_cg_enable(struct clk_hw *hw)
{
 mtk_cg_clr_bit(hw);

 return 0;
}
