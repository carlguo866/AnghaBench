
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct adau1701 {int sysclk; unsigned int pll_clkdiv; int regmap; } ;


 int ADAU1701_DSPCTRL ;
 unsigned int ADAU1701_DSPCTRL_SR_192 ;
 unsigned int ADAU1701_DSPCTRL_SR_48 ;
 unsigned int ADAU1701_DSPCTRL_SR_96 ;
 int ADAU1701_DSPCTRL_SR_MASK ;
 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int adau1701_reset (struct snd_soc_component*,unsigned int,int) ;
 int adau1701_set_capture_pcm_format (struct snd_soc_component*,struct snd_pcm_hw_params*) ;
 int adau1701_set_playback_pcm_format (struct snd_soc_component*,struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 struct adau1701* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int adau1701_hw_params(struct snd_pcm_substream *substream,
  struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct adau1701 *adau1701 = snd_soc_component_get_drvdata(component);
 unsigned int clkdiv = adau1701->sysclk / params_rate(params);
 unsigned int val;
 int ret;






 if (clkdiv != adau1701->pll_clkdiv) {
  ret = adau1701_reset(component, clkdiv, params_rate(params));
  if (ret < 0)
   return ret;
 }

 switch (params_rate(params)) {
 case 192000:
  val = ADAU1701_DSPCTRL_SR_192;
  break;
 case 96000:
  val = ADAU1701_DSPCTRL_SR_96;
  break;
 case 48000:
  val = ADAU1701_DSPCTRL_SR_48;
  break;
 default:
  return -EINVAL;
 }

 regmap_update_bits(adau1701->regmap, ADAU1701_DSPCTRL,
  ADAU1701_DSPCTRL_SR_MASK, val);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  return adau1701_set_playback_pcm_format(component, params);
 else
  return adau1701_set_capture_pcm_format(component, params);
}
