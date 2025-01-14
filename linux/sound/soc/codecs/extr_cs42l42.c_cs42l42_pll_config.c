
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_component {int dev; } ;
struct cs42l42_private {int sclk; int srate; } ;
struct TYPE_3__ {int sclk; int mclk_int; int mclk_src_sel; int mclk_div; int sclk_prediv; int pll_div_int; int pll_div_frac; int pll_mode; int pll_divout; int pll_cal_ratio; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int CS42L42_ASP_5050_MASK ;
 int CS42L42_ASP_FRM_CFG ;
 int CS42L42_ASP_FSD_1_0 ;
 int CS42L42_ASP_FSD_MASK ;
 int CS42L42_ASP_FSD_SHIFT ;
 int CS42L42_ASP_RX_CH_AP_HI ;
 int CS42L42_ASP_RX_CH_AP_LOW ;
 int CS42L42_ASP_RX_CH_AP_MASK ;
 int CS42L42_ASP_RX_CH_AP_SHIFT ;
 int CS42L42_ASP_RX_CH_RES_32 ;
 int CS42L42_ASP_RX_CH_RES_MASK ;
 int CS42L42_ASP_RX_CH_RES_SHIFT ;
 int CS42L42_ASP_RX_DAI0_CH1_AP_RES ;
 int CS42L42_ASP_RX_DAI0_CH2_AP_RES ;
 int CS42L42_CLK_IASRC_SEL_12 ;
 int CS42L42_CLK_IASRC_SEL_MASK ;
 int CS42L42_CLK_IASRC_SEL_SHIFT ;
 int CS42L42_CLK_OASRC_SEL_12 ;
 int CS42L42_CLK_OASRC_SEL_MASK ;
 int CS42L42_CLK_OASRC_SEL_SHIFT ;
 int CS42L42_FRAC0_VAL (int) ;
 int CS42L42_FRAC1_VAL (int) ;
 int CS42L42_FRAC2_VAL (int) ;
 int CS42L42_FSYNC_PERIOD_MASK ;
 int CS42L42_FSYNC_PERIOD_SHIFT ;
 int CS42L42_FSYNC_PULSE_WIDTH_MASK ;
 int CS42L42_FSYNC_PULSE_WIDTH_SHIFT ;
 int CS42L42_FSYNC_PW_LOWER ;
 int CS42L42_FSYNC_PW_UPPER ;
 int CS42L42_FSYNC_P_LOWER ;
 int CS42L42_FSYNC_P_UPPER ;
 int CS42L42_FS_EN_IASRC_96K ;
 int CS42L42_FS_EN_MASK ;
 int CS42L42_FS_EN_OASRC_96K ;
 int CS42L42_FS_EN_SHIFT ;
 int CS42L42_FS_RATE_EN ;
 int CS42L42_INTERNAL_FS_MASK ;
 int CS42L42_INTERNAL_FS_SHIFT ;
 int CS42L42_IN_ASRC_CLK ;
 int CS42L42_MCLKDIV_MASK ;
 int CS42L42_MCLKDIV_SHIFT ;
 int CS42L42_MCLK_CTL ;
 int CS42L42_MCLK_SRC_SEL ;
 int CS42L42_MCLK_SRC_SEL_MASK ;
 int CS42L42_MCLK_SRC_SEL_SHIFT ;
 int CS42L42_OUT_ASRC_CLK ;
 int CS42L42_PLL_CAL_RATIO ;
 int CS42L42_PLL_CAL_RATIO_MASK ;
 int CS42L42_PLL_CAL_RATIO_SHIFT ;
 int CS42L42_PLL_CTL1 ;
 int CS42L42_PLL_CTL3 ;
 int CS42L42_PLL_CTL4 ;
 int CS42L42_PLL_DIVOUT_MASK ;
 int CS42L42_PLL_DIVOUT_SHIFT ;
 int CS42L42_PLL_DIV_CFG1 ;
 int CS42L42_PLL_DIV_FRAC0 ;
 int CS42L42_PLL_DIV_FRAC1 ;
 int CS42L42_PLL_DIV_FRAC2 ;
 int CS42L42_PLL_DIV_FRAC_MASK ;
 int CS42L42_PLL_DIV_FRAC_SHIFT ;
 int CS42L42_PLL_DIV_INT ;
 int CS42L42_PLL_DIV_INT_MASK ;
 int CS42L42_PLL_DIV_INT_SHIFT ;
 int CS42L42_PLL_MODE_MASK ;
 int CS42L42_PLL_MODE_SHIFT ;
 int CS42L42_PLL_START_MASK ;
 int CS42L42_SCLK_PREDIV_MASK ;
 int CS42L42_SCLK_PREDIV_SHIFT ;
 int EINVAL ;
 int dev_err (int ,char*,int,int) ;
 TYPE_1__* pll_ratio_table ;
 struct cs42l42_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int cs42l42_pll_config(struct snd_soc_component *component)
{
 struct cs42l42_private *cs42l42 = snd_soc_component_get_drvdata(component);
 int i;
 u32 fsync;

 for (i = 0; i < ARRAY_SIZE(pll_ratio_table); i++) {
  if (pll_ratio_table[i].sclk == cs42l42->sclk) {

   snd_soc_component_update_bits(component, CS42L42_MCLK_CTL,
     CS42L42_INTERNAL_FS_MASK,
     ((pll_ratio_table[i].mclk_int !=
     12000000) &&
     (pll_ratio_table[i].mclk_int !=
     24000000)) <<
     CS42L42_INTERNAL_FS_SHIFT);



   snd_soc_component_update_bits(component, CS42L42_MCLK_SRC_SEL,
     CS42L42_MCLK_SRC_SEL_MASK |
     CS42L42_MCLKDIV_MASK,
     (pll_ratio_table[i].mclk_src_sel
     << CS42L42_MCLK_SRC_SEL_SHIFT) |
     (pll_ratio_table[i].mclk_div <<
     CS42L42_MCLKDIV_SHIFT));

   fsync = cs42l42->sclk / cs42l42->srate;
   if (((fsync * cs42l42->srate) != cs42l42->sclk)
    || ((fsync % 2) != 0)) {
    dev_err(component->dev,
     "Unsupported sclk %d/sample rate %d\n",
     cs42l42->sclk,
     cs42l42->srate);
    return -EINVAL;
   }

   snd_soc_component_update_bits(component,
     CS42L42_FSYNC_P_LOWER,
     CS42L42_FSYNC_PERIOD_MASK,
     CS42L42_FRAC0_VAL(fsync - 1) <<
     CS42L42_FSYNC_PERIOD_SHIFT);
   snd_soc_component_update_bits(component,
     CS42L42_FSYNC_P_UPPER,
     CS42L42_FSYNC_PERIOD_MASK,
     CS42L42_FRAC1_VAL(fsync - 1) <<
     CS42L42_FSYNC_PERIOD_SHIFT);

   fsync = fsync / 2;
   snd_soc_component_update_bits(component,
     CS42L42_FSYNC_PW_LOWER,
     CS42L42_FSYNC_PULSE_WIDTH_MASK,
     CS42L42_FRAC0_VAL(fsync - 1) <<
     CS42L42_FSYNC_PULSE_WIDTH_SHIFT);
   snd_soc_component_update_bits(component,
     CS42L42_FSYNC_PW_UPPER,
     CS42L42_FSYNC_PULSE_WIDTH_MASK,
     CS42L42_FRAC1_VAL(fsync - 1) <<
     CS42L42_FSYNC_PULSE_WIDTH_SHIFT);
   snd_soc_component_update_bits(component,
     CS42L42_ASP_FRM_CFG,
     CS42L42_ASP_5050_MASK,
     CS42L42_ASP_5050_MASK);

   snd_soc_component_update_bits(component, CS42L42_ASP_FRM_CFG,
     CS42L42_ASP_FSD_MASK,
     CS42L42_ASP_FSD_1_0 <<
     CS42L42_ASP_FSD_SHIFT);

   snd_soc_component_update_bits(component, CS42L42_FS_RATE_EN,
     CS42L42_FS_EN_MASK,
     (CS42L42_FS_EN_IASRC_96K |
     CS42L42_FS_EN_OASRC_96K) <<
     CS42L42_FS_EN_SHIFT);

   snd_soc_component_update_bits(component, CS42L42_IN_ASRC_CLK,
     CS42L42_CLK_IASRC_SEL_MASK,
     CS42L42_CLK_IASRC_SEL_12 <<
     CS42L42_CLK_IASRC_SEL_SHIFT);
   snd_soc_component_update_bits(component,
     CS42L42_OUT_ASRC_CLK,
     CS42L42_CLK_OASRC_SEL_MASK,
     CS42L42_CLK_OASRC_SEL_12 <<
     CS42L42_CLK_OASRC_SEL_SHIFT);

   snd_soc_component_update_bits(component,
     CS42L42_ASP_RX_DAI0_CH1_AP_RES,
     CS42L42_ASP_RX_CH_AP_MASK |
     CS42L42_ASP_RX_CH_RES_MASK,
     (CS42L42_ASP_RX_CH_AP_LOW <<
     CS42L42_ASP_RX_CH_AP_SHIFT) |
     (CS42L42_ASP_RX_CH_RES_32 <<
     CS42L42_ASP_RX_CH_RES_SHIFT));

   snd_soc_component_update_bits(component,
     CS42L42_ASP_RX_DAI0_CH2_AP_RES,
     CS42L42_ASP_RX_CH_AP_MASK |
     CS42L42_ASP_RX_CH_RES_MASK,
     (CS42L42_ASP_RX_CH_AP_HI <<
     CS42L42_ASP_RX_CH_AP_SHIFT) |
     (CS42L42_ASP_RX_CH_RES_32 <<
     CS42L42_ASP_RX_CH_RES_SHIFT));
   if (pll_ratio_table[i].mclk_src_sel == 0) {

    snd_soc_component_update_bits(component,
     CS42L42_PLL_CTL1,
     CS42L42_PLL_START_MASK, 0);
   } else {

    snd_soc_component_update_bits(component,
     CS42L42_PLL_DIV_CFG1,
     CS42L42_SCLK_PREDIV_MASK,
     pll_ratio_table[i].sclk_prediv
     << CS42L42_SCLK_PREDIV_SHIFT);
    snd_soc_component_update_bits(component,
     CS42L42_PLL_DIV_INT,
     CS42L42_PLL_DIV_INT_MASK,
     pll_ratio_table[i].pll_div_int
     << CS42L42_PLL_DIV_INT_SHIFT);
    snd_soc_component_update_bits(component,
     CS42L42_PLL_DIV_FRAC0,
     CS42L42_PLL_DIV_FRAC_MASK,
     CS42L42_FRAC0_VAL(
     pll_ratio_table[i].pll_div_frac)
     << CS42L42_PLL_DIV_FRAC_SHIFT);
    snd_soc_component_update_bits(component,
     CS42L42_PLL_DIV_FRAC1,
     CS42L42_PLL_DIV_FRAC_MASK,
     CS42L42_FRAC1_VAL(
     pll_ratio_table[i].pll_div_frac)
     << CS42L42_PLL_DIV_FRAC_SHIFT);
    snd_soc_component_update_bits(component,
     CS42L42_PLL_DIV_FRAC2,
     CS42L42_PLL_DIV_FRAC_MASK,
     CS42L42_FRAC2_VAL(
     pll_ratio_table[i].pll_div_frac)
     << CS42L42_PLL_DIV_FRAC_SHIFT);
    snd_soc_component_update_bits(component,
     CS42L42_PLL_CTL4,
     CS42L42_PLL_MODE_MASK,
     pll_ratio_table[i].pll_mode
     << CS42L42_PLL_MODE_SHIFT);
    snd_soc_component_update_bits(component,
     CS42L42_PLL_CTL3,
     CS42L42_PLL_DIVOUT_MASK,
     pll_ratio_table[i].pll_divout
     << CS42L42_PLL_DIVOUT_SHIFT);
    snd_soc_component_update_bits(component,
     CS42L42_PLL_CAL_RATIO,
     CS42L42_PLL_CAL_RATIO_MASK,
     pll_ratio_table[i].pll_cal_ratio
     << CS42L42_PLL_CAL_RATIO_SHIFT);
   }
   return 0;
  }
 }

 return -EINVAL;
}
