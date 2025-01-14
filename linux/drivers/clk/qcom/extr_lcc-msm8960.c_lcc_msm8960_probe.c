
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct platform_device {int dummy; } ;
struct TYPE_14__ {void* freq_tbl; } ;
struct TYPE_13__ {void* freq_tbl; } ;
struct TYPE_12__ {void* freq_tbl; } ;
struct TYPE_11__ {int freq_tbl; } ;
struct TYPE_10__ {void* freq_tbl; } ;
struct TYPE_9__ {void* freq_tbl; } ;
struct TYPE_8__ {void* freq_tbl; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 void* clk_tbl_aif_osr_492 ;
 int clk_tbl_pcm_492 ;
 TYPE_7__ codec_i2s_mic_osr_src ;
 TYPE_6__ codec_i2s_spkr_osr_src ;
 int lcc_msm8960_desc ;
 TYPE_5__ mi2s_osr_src ;
 TYPE_4__ pcm_src ;
 struct regmap* qcom_cc_map (struct platform_device*,int *) ;
 int qcom_cc_really_probe (struct platform_device*,int *,struct regmap*) ;
 int regmap_read (struct regmap*,int,int*) ;
 int regmap_write (struct regmap*,int,int) ;
 TYPE_3__ slimbus_src ;
 TYPE_2__ spare_i2s_mic_osr_src ;
 TYPE_1__ spare_i2s_spkr_osr_src ;

__attribute__((used)) static int lcc_msm8960_probe(struct platform_device *pdev)
{
 u32 val;
 struct regmap *regmap;

 regmap = qcom_cc_map(pdev, &lcc_msm8960_desc);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);


 regmap_read(regmap, 0x4, &val);
 if (val == 0x12) {
  slimbus_src.freq_tbl = clk_tbl_aif_osr_492;
  mi2s_osr_src.freq_tbl = clk_tbl_aif_osr_492;
  codec_i2s_mic_osr_src.freq_tbl = clk_tbl_aif_osr_492;
  spare_i2s_mic_osr_src.freq_tbl = clk_tbl_aif_osr_492;
  codec_i2s_spkr_osr_src.freq_tbl = clk_tbl_aif_osr_492;
  spare_i2s_spkr_osr_src.freq_tbl = clk_tbl_aif_osr_492;
  pcm_src.freq_tbl = clk_tbl_pcm_492;
 }

 regmap_write(regmap, 0xc4, 0x1);

 return qcom_cc_really_probe(pdev, &lcc_msm8960_desc, regmap);
}
