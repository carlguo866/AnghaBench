
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {struct snd_soc_dapm_context* dapm; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_card {int dev; } ;
struct snd_kcontrol {int dummy; } ;


 int EIO ;
 int NAU8825_CLK_INTERNAL ;
 int NAU8825_CLK_MCLK ;
 int SKL_NUVOTON_CODEC_DAI ;
 int SND_SOC_CLOCK_IN ;
 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int dev_err (int ,char*,...) ;
 struct snd_soc_dai* snd_soc_card_get_codec_dai (struct snd_soc_card*,int ) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;

__attribute__((used)) static int platform_clock_control(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *k, int event)
{
 struct snd_soc_dapm_context *dapm = w->dapm;
 struct snd_soc_card *card = dapm->card;
 struct snd_soc_dai *codec_dai;
 int ret;

 codec_dai = snd_soc_card_get_codec_dai(card, SKL_NUVOTON_CODEC_DAI);
 if (!codec_dai) {
  dev_err(card->dev, "Codec dai not found; Unable to set platform clock\n");
  return -EIO;
 }

 if (SND_SOC_DAPM_EVENT_ON(event)) {
  ret = snd_soc_dai_set_sysclk(codec_dai,
    NAU8825_CLK_MCLK, 24000000, SND_SOC_CLOCK_IN);
  if (ret < 0) {
   dev_err(card->dev, "set sysclk err = %d\n", ret);
   return -EIO;
  }
 } else {
  ret = snd_soc_dai_set_sysclk(codec_dai,
    NAU8825_CLK_INTERNAL, 0, SND_SOC_CLOCK_IN);
  if (ret < 0) {
   dev_err(card->dev, "set sysclk err = %d\n", ret);
   return -EIO;
  }
 }

 return ret;
}
