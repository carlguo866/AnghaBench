
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {scalar_t__ id; struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int EINVAL ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;



 unsigned int WM8580_AIF_BCP ;
 unsigned int WM8580_AIF_FMT_DSP ;
 unsigned int WM8580_AIF_FMT_I2S ;
 unsigned int WM8580_AIF_FMT_LEFTJ ;
 unsigned int WM8580_AIF_FMT_MASK ;
 unsigned int WM8580_AIF_FMT_RIGHTJ ;
 unsigned int WM8580_AIF_LRP ;
 unsigned int WM8580_AIF_MS ;
 scalar_t__ WM8580_PAIF1 ;
 scalar_t__ WM8580_PAIF3 ;
 unsigned int snd_soc_read (struct snd_soc_codec*,scalar_t__) ;
 int snd_soc_write (struct snd_soc_codec*,scalar_t__,unsigned int) ;

__attribute__((used)) static int wm8580_set_paif_dai_fmt(struct snd_soc_dai *codec_dai,
          unsigned int fmt)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 unsigned int aifa;
 unsigned int aifb;
 int can_invert_lrclk;

 aifa = snd_soc_read(codec, WM8580_PAIF1 + codec_dai->id);
 aifb = snd_soc_read(codec, WM8580_PAIF3 + codec_dai->id);

 aifb &= ~(WM8580_AIF_FMT_MASK | WM8580_AIF_LRP | WM8580_AIF_BCP);

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 137:
  aifa &= ~WM8580_AIF_MS;
  break;
 case 138:
  aifa |= WM8580_AIF_MS;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 134:
  can_invert_lrclk = 1;
  aifb |= WM8580_AIF_FMT_I2S;
  break;
 case 128:
  can_invert_lrclk = 1;
  aifb |= WM8580_AIF_FMT_RIGHTJ;
  break;
 case 131:
  can_invert_lrclk = 1;
  aifb |= WM8580_AIF_FMT_LEFTJ;
  break;
 case 136:
  can_invert_lrclk = 0;
  aifb |= WM8580_AIF_FMT_DSP;
  break;
 case 135:
  can_invert_lrclk = 0;
  aifb |= WM8580_AIF_FMT_DSP;
  aifb |= WM8580_AIF_LRP;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
  break;

 case 133:
  if (!can_invert_lrclk)
   return -EINVAL;
  aifb |= WM8580_AIF_BCP;
  aifb |= WM8580_AIF_LRP;
  break;

 case 132:
  aifb |= WM8580_AIF_BCP;
  break;

 case 130:
  if (!can_invert_lrclk)
   return -EINVAL;
  aifb |= WM8580_AIF_LRP;
  break;

 default:
  return -EINVAL;
 }

 snd_soc_write(codec, WM8580_PAIF1 + codec_dai->id, aifa);
 snd_soc_write(codec, WM8580_PAIF3 + codec_dai->id, aifb);

 return 0;
}
