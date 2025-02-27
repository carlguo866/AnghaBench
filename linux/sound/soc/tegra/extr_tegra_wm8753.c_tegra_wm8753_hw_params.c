
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_wm8753 {int util_data; } ;
struct snd_soc_pcm_runtime {struct snd_soc_card* card; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_card {int dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int SND_SOC_CLOCK_IN ;
 int WM8753_MCLK ;
 int dev_err (int ,char*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 struct tegra_wm8753* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;
 int tegra_asoc_utils_set_rate (int *,int,int) ;

__attribute__((used)) static int tegra_wm8753_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_card *card = rtd->card;
 struct tegra_wm8753 *machine = snd_soc_card_get_drvdata(card);
 int srate, mclk;
 int err;

 srate = params_rate(params);
 switch (srate) {
 case 11025:
 case 22050:
 case 44100:
 case 88200:
  mclk = 11289600;
  break;
 default:
  mclk = 12288000;
  break;
 }

 err = tegra_asoc_utils_set_rate(&machine->util_data, srate, mclk);
 if (err < 0) {
  dev_err(card->dev, "Can't configure clocks\n");
  return err;
 }

 err = snd_soc_dai_set_sysclk(codec_dai, WM8753_MCLK, mclk,
     SND_SOC_CLOCK_IN);
 if (err < 0) {
  dev_err(card->dev, "codec_dai clock not set\n");
  return err;
 }

 return 0;
}
