
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct ccu_mp {int enable; int common; } ;


 int ccu_gate_helper_enable (int *,int ) ;
 struct ccu_mp* hw_to_ccu_mp (struct clk_hw*) ;

__attribute__((used)) static int ccu_mp_enable(struct clk_hw *hw)
{
 struct ccu_mp *cmp = hw_to_ccu_mp(hw);

 return ccu_gate_helper_enable(&cmp->common, cmp->enable);
}
