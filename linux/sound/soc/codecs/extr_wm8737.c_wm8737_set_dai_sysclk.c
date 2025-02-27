
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wm8737_priv {unsigned int mclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_3__ {unsigned int mclk; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* coeff_div ;
 int dev_err (int ,char*,unsigned int) ;
 struct wm8737_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int wm8737_set_dai_sysclk(struct snd_soc_dai *codec_dai,
     int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct wm8737_priv *wm8737 = snd_soc_component_get_drvdata(component);
 int i;

 for (i = 0; i < ARRAY_SIZE(coeff_div); i++) {
  if (freq == coeff_div[i].mclk ||
      freq == coeff_div[i].mclk * 2) {
   wm8737->mclk = freq;
   return 0;
  }
 }

 dev_err(component->dev, "MCLK rate %dHz not supported\n", freq);

 return -EINVAL;
}
