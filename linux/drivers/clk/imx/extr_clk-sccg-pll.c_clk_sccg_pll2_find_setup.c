
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct clk_sccg_pll_setup {scalar_t__ vco1; } ;


 int EINVAL ;
 scalar_t__ PLL_STAGE1_MAX_FREQ ;
 scalar_t__ PLL_STAGE1_MIN_FREQ ;
 int clk_sccg_divr2_lookup (struct clk_sccg_pll_setup*,struct clk_sccg_pll_setup*) ;

__attribute__((used)) static int clk_sccg_pll2_find_setup(struct clk_sccg_pll_setup *setup,
     struct clk_sccg_pll_setup *temp_setup,
     uint64_t ref)
{

 int ret = -EINVAL;

 if (ref < PLL_STAGE1_MIN_FREQ || ref > PLL_STAGE1_MAX_FREQ)
  return ret;

 temp_setup->vco1 = ref;

 ret = clk_sccg_divr2_lookup(setup, temp_setup);
 return ret;
}
