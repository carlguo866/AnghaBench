
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs42l42_private {int regmap; } ;


 int CS42L42_ADC_OVFL_INT_MASK ;
 int CS42L42_ADC_OVFL_MASK ;
 int CS42L42_ADC_OVFL_SHIFT ;
 int CS42L42_ASPRX_EARLY_MASK ;
 int CS42L42_ASPRX_EARLY_SHIFT ;
 int CS42L42_ASPRX_ERROR_MASK ;
 int CS42L42_ASPRX_ERROR_SHIFT ;
 int CS42L42_ASPRX_LATE_MASK ;
 int CS42L42_ASPRX_LATE_SHIFT ;
 int CS42L42_ASPRX_NOLRCK_MASK ;
 int CS42L42_ASPRX_NOLRCK_SHIFT ;
 int CS42L42_ASPRX_OVLD_MASK ;
 int CS42L42_ASPRX_OVLD_SHIFT ;
 int CS42L42_ASPTX_EARLY_MASK ;
 int CS42L42_ASPTX_EARLY_SHIFT ;
 int CS42L42_ASPTX_LATE_MASK ;
 int CS42L42_ASPTX_LATE_SHIFT ;
 int CS42L42_ASPTX_NOLRCK_MASK ;
 int CS42L42_ASPTX_NOLRCK_SHIFT ;
 int CS42L42_ASPTX_SMERROR_MASK ;
 int CS42L42_ASPTX_SMERROR_SHIFT ;
 int CS42L42_ASP_RX_INT_MASK ;
 int CS42L42_ASP_TX_INT_MASK ;
 int CS42L42_CODEC_INT_MASK ;
 int CS42L42_DET_INT1_MASK ;
 int CS42L42_DET_INT2_MASK ;
 int CS42L42_EQ_BIQUAD_OVFL_MASK ;
 int CS42L42_EQ_BIQUAD_OVFL_SHIFT ;
 int CS42L42_EQ_OVFL_MASK ;
 int CS42L42_EQ_OVFL_SHIFT ;
 int CS42L42_HSBIAS_SENSE_MASK ;
 int CS42L42_HSBIAS_SENSE_SHIFT ;
 int CS42L42_HSDET_AUTO_DONE_MASK ;
 int CS42L42_HSDET_AUTO_DONE_SHIFT ;
 int CS42L42_MIXER_INT_MASK ;
 int CS42L42_MIX_CHA_OVFL_MASK ;
 int CS42L42_MIX_CHA_OVFL_SHIFT ;
 int CS42L42_MIX_CHB_OVFL_MASK ;
 int CS42L42_MIX_CHB_OVFL_SHIFT ;
 int CS42L42_M_DETECT_FT_MASK ;
 int CS42L42_M_DETECT_FT_SHIFT ;
 int CS42L42_M_DETECT_TF_MASK ;
 int CS42L42_M_DETECT_TF_SHIFT ;
 int CS42L42_M_HSBIAS_HIZ_MASK ;
 int CS42L42_M_HSBIAS_HIZ_SHIFT ;
 int CS42L42_M_SHORT_DET_MASK ;
 int CS42L42_M_SHORT_DET_SHIFT ;
 int CS42L42_M_SHORT_RLS_MASK ;
 int CS42L42_M_SHORT_RLS_SHIFT ;
 int CS42L42_PDN_DONE_MASK ;
 int CS42L42_PDN_DONE_SHIFT ;
 int CS42L42_PLL_LOCK_INT_MASK ;
 int CS42L42_PLL_LOCK_MASK ;
 int CS42L42_PLL_LOCK_SHIFT ;
 int CS42L42_RS_PLUG_MASK ;
 int CS42L42_RS_PLUG_SHIFT ;
 int CS42L42_RS_UNPLUG_MASK ;
 int CS42L42_RS_UNPLUG_SHIFT ;
 int CS42L42_SRCPL_ADC_LK_MASK ;
 int CS42L42_SRCPL_ADC_LK_SHIFT ;
 int CS42L42_SRCPL_ADC_UNLK_MASK ;
 int CS42L42_SRCPL_ADC_UNLK_SHIFT ;
 int CS42L42_SRCPL_DAC_LK_MASK ;
 int CS42L42_SRCPL_DAC_LK_SHIFT ;
 int CS42L42_SRCPL_DAC_UNLK_MASK ;
 int CS42L42_SRCPL_DAC_UNLK_SHIFT ;
 int CS42L42_SRCPL_INT_MASK ;
 int CS42L42_SRC_ILK_MASK ;
 int CS42L42_SRC_ILK_SHIFT ;
 int CS42L42_SRC_INT_MASK ;
 int CS42L42_SRC_IUNLK_MASK ;
 int CS42L42_SRC_IUNLK_SHIFT ;
 int CS42L42_SRC_OLK_MASK ;
 int CS42L42_SRC_OLK_SHIFT ;
 int CS42L42_SRC_OUNLK_MASK ;
 int CS42L42_SRC_OUNLK_SHIFT ;
 int CS42L42_TIP_SENSE_PLUG_MASK ;
 int CS42L42_TIP_SENSE_PLUG_SHIFT ;
 int CS42L42_TIP_SENSE_UNPLUG_MASK ;
 int CS42L42_TIP_SENSE_UNPLUG_SHIFT ;
 int CS42L42_TSRS_PLUG_INT_MASK ;
 int CS42L42_TS_PLUG_MASK ;
 int CS42L42_TS_PLUG_SHIFT ;
 int CS42L42_TS_UNPLUG_MASK ;
 int CS42L42_TS_UNPLUG_SHIFT ;
 int CS42L42_VPMON_INT_MASK ;
 int CS42L42_VPMON_MASK ;
 int CS42L42_VPMON_SHIFT ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void cs42l42_set_interrupt_masks(struct cs42l42_private *cs42l42)
{
 regmap_update_bits(cs42l42->regmap, CS42L42_ADC_OVFL_INT_MASK,
   CS42L42_ADC_OVFL_MASK,
   (1 << CS42L42_ADC_OVFL_SHIFT));

 regmap_update_bits(cs42l42->regmap, CS42L42_MIXER_INT_MASK,
   CS42L42_MIX_CHB_OVFL_MASK |
   CS42L42_MIX_CHA_OVFL_MASK |
   CS42L42_EQ_OVFL_MASK |
   CS42L42_EQ_BIQUAD_OVFL_MASK,
   (1 << CS42L42_MIX_CHB_OVFL_SHIFT) |
   (1 << CS42L42_MIX_CHA_OVFL_SHIFT) |
   (1 << CS42L42_EQ_OVFL_SHIFT) |
   (1 << CS42L42_EQ_BIQUAD_OVFL_SHIFT));

 regmap_update_bits(cs42l42->regmap, CS42L42_SRC_INT_MASK,
   CS42L42_SRC_ILK_MASK |
   CS42L42_SRC_OLK_MASK |
   CS42L42_SRC_IUNLK_MASK |
   CS42L42_SRC_OUNLK_MASK,
   (1 << CS42L42_SRC_ILK_SHIFT) |
   (1 << CS42L42_SRC_OLK_SHIFT) |
   (1 << CS42L42_SRC_IUNLK_SHIFT) |
   (1 << CS42L42_SRC_OUNLK_SHIFT));

 regmap_update_bits(cs42l42->regmap, CS42L42_ASP_RX_INT_MASK,
   CS42L42_ASPRX_NOLRCK_MASK |
   CS42L42_ASPRX_EARLY_MASK |
   CS42L42_ASPRX_LATE_MASK |
   CS42L42_ASPRX_ERROR_MASK |
   CS42L42_ASPRX_OVLD_MASK,
   (1 << CS42L42_ASPRX_NOLRCK_SHIFT) |
   (1 << CS42L42_ASPRX_EARLY_SHIFT) |
   (1 << CS42L42_ASPRX_LATE_SHIFT) |
   (1 << CS42L42_ASPRX_ERROR_SHIFT) |
   (1 << CS42L42_ASPRX_OVLD_SHIFT));

 regmap_update_bits(cs42l42->regmap, CS42L42_ASP_TX_INT_MASK,
   CS42L42_ASPTX_NOLRCK_MASK |
   CS42L42_ASPTX_EARLY_MASK |
   CS42L42_ASPTX_LATE_MASK |
   CS42L42_ASPTX_SMERROR_MASK,
   (1 << CS42L42_ASPTX_NOLRCK_SHIFT) |
   (1 << CS42L42_ASPTX_EARLY_SHIFT) |
   (1 << CS42L42_ASPTX_LATE_SHIFT) |
   (1 << CS42L42_ASPTX_SMERROR_SHIFT));

 regmap_update_bits(cs42l42->regmap, CS42L42_CODEC_INT_MASK,
   CS42L42_PDN_DONE_MASK |
   CS42L42_HSDET_AUTO_DONE_MASK,
   (1 << CS42L42_PDN_DONE_SHIFT) |
   (1 << CS42L42_HSDET_AUTO_DONE_SHIFT));

 regmap_update_bits(cs42l42->regmap, CS42L42_SRCPL_INT_MASK,
   CS42L42_SRCPL_ADC_LK_MASK |
   CS42L42_SRCPL_DAC_LK_MASK |
   CS42L42_SRCPL_ADC_UNLK_MASK |
   CS42L42_SRCPL_DAC_UNLK_MASK,
   (1 << CS42L42_SRCPL_ADC_LK_SHIFT) |
   (1 << CS42L42_SRCPL_DAC_LK_SHIFT) |
   (1 << CS42L42_SRCPL_ADC_UNLK_SHIFT) |
   (1 << CS42L42_SRCPL_DAC_UNLK_SHIFT));

 regmap_update_bits(cs42l42->regmap, CS42L42_DET_INT1_MASK,
   CS42L42_TIP_SENSE_UNPLUG_MASK |
   CS42L42_TIP_SENSE_PLUG_MASK |
   CS42L42_HSBIAS_SENSE_MASK,
   (1 << CS42L42_TIP_SENSE_UNPLUG_SHIFT) |
   (1 << CS42L42_TIP_SENSE_PLUG_SHIFT) |
   (1 << CS42L42_HSBIAS_SENSE_SHIFT));

 regmap_update_bits(cs42l42->regmap, CS42L42_DET_INT2_MASK,
   CS42L42_M_DETECT_TF_MASK |
   CS42L42_M_DETECT_FT_MASK |
   CS42L42_M_HSBIAS_HIZ_MASK |
   CS42L42_M_SHORT_RLS_MASK |
   CS42L42_M_SHORT_DET_MASK,
   (1 << CS42L42_M_DETECT_TF_SHIFT) |
   (1 << CS42L42_M_DETECT_FT_SHIFT) |
   (1 << CS42L42_M_HSBIAS_HIZ_SHIFT) |
   (1 << CS42L42_M_SHORT_RLS_SHIFT) |
   (1 << CS42L42_M_SHORT_DET_SHIFT));

 regmap_update_bits(cs42l42->regmap, CS42L42_VPMON_INT_MASK,
   CS42L42_VPMON_MASK,
   (1 << CS42L42_VPMON_SHIFT));

 regmap_update_bits(cs42l42->regmap, CS42L42_PLL_LOCK_INT_MASK,
   CS42L42_PLL_LOCK_MASK,
   (1 << CS42L42_PLL_LOCK_SHIFT));

 regmap_update_bits(cs42l42->regmap, CS42L42_TSRS_PLUG_INT_MASK,
   CS42L42_RS_PLUG_MASK |
   CS42L42_RS_UNPLUG_MASK |
   CS42L42_TS_PLUG_MASK |
   CS42L42_TS_UNPLUG_MASK,
   (1 << CS42L42_RS_PLUG_SHIFT) |
   (1 << CS42L42_RS_UNPLUG_SHIFT) |
   (0 << CS42L42_TS_PLUG_SHIFT) |
   (0 << CS42L42_TS_UNPLUG_SHIFT));
}
