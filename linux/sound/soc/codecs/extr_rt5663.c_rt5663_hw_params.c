
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int id; int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct rt5663_priv {int lrck; int sysclk; } ;


 int EINVAL ;
 int RT5663_ADDA_CLK_1 ;
 int RT5663_I2S1_SDP ;
 unsigned int RT5663_I2S_DL_16 ;
 unsigned int RT5663_I2S_DL_20 ;
 unsigned int RT5663_I2S_DL_24 ;
 unsigned int RT5663_I2S_DL_8 ;
 int RT5663_I2S_DL_MASK ;
 int RT5663_I2S_PD1_MASK ;
 int RT5663_I2S_PD1_SHIFT ;
 int dev_dbg (int ,char*,int,int ) ;
 int dev_err (int ,char*,int,int ) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 int rl6231_get_clk_info (int ,int) ;
 struct rt5663_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int rt5663_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct rt5663_priv *rt5663 = snd_soc_component_get_drvdata(component);
 unsigned int val_len = 0;
 int pre_div;

 rt5663->lrck = params_rate(params);

 dev_dbg(dai->dev, "bclk is %dHz and sysclk is %dHz\n",
  rt5663->lrck, rt5663->sysclk);

 pre_div = rl6231_get_clk_info(rt5663->sysclk, rt5663->lrck);
 if (pre_div < 0) {
  dev_err(component->dev, "Unsupported clock setting %d for DAI %d\n",
   rt5663->lrck, dai->id);
  return -EINVAL;
 }

 dev_dbg(dai->dev, "pre_div is %d for iis %d\n", pre_div, dai->id);

 switch (params_width(params)) {
 case 8:
  val_len = RT5663_I2S_DL_8;
  break;
 case 16:
  val_len = RT5663_I2S_DL_16;
  break;
 case 20:
  val_len = RT5663_I2S_DL_20;
  break;
 case 24:
  val_len = RT5663_I2S_DL_24;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, RT5663_I2S1_SDP,
  RT5663_I2S_DL_MASK, val_len);

 snd_soc_component_update_bits(component, RT5663_ADDA_CLK_1,
  RT5663_I2S_PD1_MASK, pre_div << RT5663_I2S_PD1_SHIFT);

 return 0;
}
