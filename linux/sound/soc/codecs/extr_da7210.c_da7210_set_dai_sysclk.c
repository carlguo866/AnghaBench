
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct da7210_priv {unsigned int mclk_rate; } ;



 int EINVAL ;
 int dev_err (int ,char*,int) ;
 struct da7210_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int da7210_set_dai_sysclk(struct snd_soc_dai *codec_dai,
     int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct da7210_priv *da7210 = snd_soc_component_get_drvdata(component);

 switch (clk_id) {
 case 128:
  switch (freq) {
  case 12000000:
  case 13000000:
  case 13500000:
  case 14400000:
  case 19200000:
  case 19680000:
  case 19800000:
   da7210->mclk_rate = freq;
   return 0;
  default:
   dev_err(codec_dai->dev, "Unsupported MCLK value %d\n",
    freq);
   return -EINVAL;
  }
  break;
 default:
  dev_err(codec_dai->dev, "Unknown clock source %d\n", clk_id);
  return -EINVAL;
 }
}
