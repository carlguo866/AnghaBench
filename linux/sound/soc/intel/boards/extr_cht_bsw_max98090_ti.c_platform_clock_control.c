
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {struct snd_soc_dapm_context* dapm; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_card {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct cht_mc_private {int quirks; int mclk; } ;


 int CHT_CODEC_DAI ;
 int EIO ;
 int QUIRK_PMC_PLT_CLK_0 ;
 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 struct snd_soc_dai* snd_soc_card_get_codec_dai (struct snd_soc_card*,int ) ;
 struct cht_mc_private* snd_soc_card_get_drvdata (struct snd_soc_card*) ;

__attribute__((used)) static int platform_clock_control(struct snd_soc_dapm_widget *w,
       struct snd_kcontrol *k, int event)
{
 struct snd_soc_dapm_context *dapm = w->dapm;
 struct snd_soc_card *card = dapm->card;
 struct snd_soc_dai *codec_dai;
 struct cht_mc_private *ctx = snd_soc_card_get_drvdata(card);
 int ret;


 if (ctx->quirks & QUIRK_PMC_PLT_CLK_0)
  return 0;

 codec_dai = snd_soc_card_get_codec_dai(card, CHT_CODEC_DAI);
 if (!codec_dai) {
  dev_err(card->dev, "Codec dai not found; Unable to set platform clock\n");
  return -EIO;
 }

 if (SND_SOC_DAPM_EVENT_ON(event)) {
  ret = clk_prepare_enable(ctx->mclk);
  if (ret < 0) {
   dev_err(card->dev,
    "could not configure MCLK state");
   return ret;
  }
 } else {
  clk_disable_unprepare(ctx->mclk);
 }

 return 0;
}
