
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tas2552_data {int tdm_delay; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;
 int TAS2552_CFG_3 ;
 int TAS2552_CLKSPERFRAME_128 ;
 int TAS2552_CLKSPERFRAME_256 ;
 int TAS2552_CLKSPERFRAME_32 ;
 int TAS2552_CLKSPERFRAME_64 ;
 int TAS2552_CLKSPERFRAME_MASK ;
 int TAS2552_SER_CTRL_1 ;
 int TAS2552_WCLK_FREQ_11_12KHZ ;
 int TAS2552_WCLK_FREQ_16KHZ ;
 int TAS2552_WCLK_FREQ_176_192KHZ ;
 int TAS2552_WCLK_FREQ_22_24KHZ ;
 int TAS2552_WCLK_FREQ_32KHZ ;
 int TAS2552_WCLK_FREQ_44_48KHZ ;
 int TAS2552_WCLK_FREQ_88_96KHZ ;
 int TAS2552_WCLK_FREQ_8KHZ ;
 int TAS2552_WCLK_FREQ_MASK ;
 int TAS2552_WORDLENGTH_16BIT ;
 int TAS2552_WORDLENGTH_20BIT ;
 int TAS2552_WORDLENGTH_24BIT ;
 int TAS2552_WORDLENGTH_32BIT ;
 int TAS2552_WORDLENGTH_MASK ;
 int dev_err (int ,char*,int) ;
 struct tas2552_data* dev_get_drvdata (int ) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int ) ;
 int tas2552_setup_pll (struct snd_soc_component*,struct snd_pcm_hw_params*) ;

__attribute__((used)) static int tas2552_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *params,
        struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct tas2552_data *tas2552 = dev_get_drvdata(component->dev);
 int cpf;
 u8 ser_ctrl1_reg, wclk_rate;

 switch (params_width(params)) {
 case 16:
  ser_ctrl1_reg = TAS2552_WORDLENGTH_16BIT;
  cpf = 32 + tas2552->tdm_delay;
  break;
 case 20:
  ser_ctrl1_reg = TAS2552_WORDLENGTH_20BIT;
  cpf = 64 + tas2552->tdm_delay;
  break;
 case 24:
  ser_ctrl1_reg = TAS2552_WORDLENGTH_24BIT;
  cpf = 64 + tas2552->tdm_delay;
  break;
 case 32:
  ser_ctrl1_reg = TAS2552_WORDLENGTH_32BIT;
  cpf = 64 + tas2552->tdm_delay;
  break;
 default:
  dev_err(component->dev, "Not supported sample size: %d\n",
   params_width(params));
  return -EINVAL;
 }

 if (cpf <= 32)
  ser_ctrl1_reg |= TAS2552_CLKSPERFRAME_32;
 else if (cpf <= 64)
  ser_ctrl1_reg |= TAS2552_CLKSPERFRAME_64;
 else if (cpf <= 128)
  ser_ctrl1_reg |= TAS2552_CLKSPERFRAME_128;
 else
  ser_ctrl1_reg |= TAS2552_CLKSPERFRAME_256;

 snd_soc_component_update_bits(component, TAS2552_SER_CTRL_1,
       TAS2552_WORDLENGTH_MASK | TAS2552_CLKSPERFRAME_MASK,
       ser_ctrl1_reg);

 switch (params_rate(params)) {
 case 8000:
  wclk_rate = TAS2552_WCLK_FREQ_8KHZ;
  break;
 case 11025:
 case 12000:
  wclk_rate = TAS2552_WCLK_FREQ_11_12KHZ;
  break;
 case 16000:
  wclk_rate = TAS2552_WCLK_FREQ_16KHZ;
  break;
 case 22050:
 case 24000:
  wclk_rate = TAS2552_WCLK_FREQ_22_24KHZ;
  break;
 case 32000:
  wclk_rate = TAS2552_WCLK_FREQ_32KHZ;
  break;
 case 44100:
 case 48000:
  wclk_rate = TAS2552_WCLK_FREQ_44_48KHZ;
  break;
 case 88200:
 case 96000:
  wclk_rate = TAS2552_WCLK_FREQ_88_96KHZ;
  break;
 case 176400:
 case 192000:
  wclk_rate = TAS2552_WCLK_FREQ_176_192KHZ;
  break;
 default:
  dev_err(component->dev, "Not supported sample rate: %d\n",
   params_rate(params));
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, TAS2552_CFG_3, TAS2552_WCLK_FREQ_MASK,
       wclk_rate);

 return tas2552_setup_pll(component, params);
}
