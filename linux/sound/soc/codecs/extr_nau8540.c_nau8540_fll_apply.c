
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct nau8540_fll {int mclk_src; int ratio; int fll_int; int clk_ref_div; scalar_t__ fll_frac; } ;


 int NAU8540_CLK_MCLK_SRC_MASK ;
 int NAU8540_CLK_SRC_MASK ;
 int NAU8540_CLK_SRC_MCLK ;
 int NAU8540_CUTOFF500 ;
 int NAU8540_DCO_EN ;
 int NAU8540_FLL_CLK_SW_MASK ;
 int NAU8540_FLL_CLK_SW_REF ;
 int NAU8540_FLL_FTR_SW_ACCU ;
 int NAU8540_FLL_FTR_SW_FILTER ;
 int NAU8540_FLL_FTR_SW_MASK ;
 int NAU8540_FLL_INTEGER_MASK ;
 int NAU8540_FLL_LOOP_FTR_EN ;
 int NAU8540_FLL_PDB_DAC_EN ;
 int NAU8540_FLL_RATIO_MASK ;
 int NAU8540_FLL_REF_DIV_MASK ;
 int NAU8540_FLL_REF_DIV_SFT ;
 int NAU8540_ICTRL_LATCH_MASK ;
 int NAU8540_ICTRL_LATCH_SFT ;
 int NAU8540_REG_CLOCK_SRC ;
 int NAU8540_REG_FLL1 ;
 int NAU8540_REG_FLL2 ;
 int NAU8540_REG_FLL3 ;
 int NAU8540_REG_FLL4 ;
 int NAU8540_REG_FLL5 ;
 int NAU8540_REG_FLL6 ;
 int NAU8540_SDM_EN ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;
 int regmap_write (struct regmap*,int ,scalar_t__) ;

__attribute__((used)) static void nau8540_fll_apply(struct regmap *regmap,
 struct nau8540_fll *fll_param)
{
 regmap_update_bits(regmap, NAU8540_REG_CLOCK_SRC,
  NAU8540_CLK_SRC_MASK | NAU8540_CLK_MCLK_SRC_MASK,
  NAU8540_CLK_SRC_MCLK | fll_param->mclk_src);
 regmap_update_bits(regmap, NAU8540_REG_FLL1,
  NAU8540_FLL_RATIO_MASK | NAU8540_ICTRL_LATCH_MASK,
  fll_param->ratio | (0x6 << NAU8540_ICTRL_LATCH_SFT));

 regmap_write(regmap, NAU8540_REG_FLL2, fll_param->fll_frac);

 regmap_update_bits(regmap, NAU8540_REG_FLL3,
  NAU8540_FLL_INTEGER_MASK, fll_param->fll_int);

 regmap_update_bits(regmap, NAU8540_REG_FLL4,
  NAU8540_FLL_REF_DIV_MASK,
  fll_param->clk_ref_div << NAU8540_FLL_REF_DIV_SFT);
 regmap_update_bits(regmap, NAU8540_REG_FLL5,
  NAU8540_FLL_CLK_SW_MASK, NAU8540_FLL_CLK_SW_REF);
 regmap_update_bits(regmap,
  NAU8540_REG_FLL6, NAU8540_DCO_EN, 0);
 if (fll_param->fll_frac) {
  regmap_update_bits(regmap, NAU8540_REG_FLL5,
   NAU8540_FLL_PDB_DAC_EN | NAU8540_FLL_LOOP_FTR_EN |
   NAU8540_FLL_FTR_SW_MASK,
   NAU8540_FLL_PDB_DAC_EN | NAU8540_FLL_LOOP_FTR_EN |
   NAU8540_FLL_FTR_SW_FILTER);
  regmap_update_bits(regmap, NAU8540_REG_FLL6,
   NAU8540_SDM_EN | NAU8540_CUTOFF500,
   NAU8540_SDM_EN | NAU8540_CUTOFF500);
 } else {
  regmap_update_bits(regmap, NAU8540_REG_FLL5,
   NAU8540_FLL_PDB_DAC_EN | NAU8540_FLL_LOOP_FTR_EN |
   NAU8540_FLL_FTR_SW_MASK, NAU8540_FLL_FTR_SW_ACCU);
  regmap_update_bits(regmap, NAU8540_REG_FLL6,
   NAU8540_SDM_EN | NAU8540_CUTOFF500, 0);
 }
}
