
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8750_priv {unsigned int sysclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 struct wm8750_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int wm8750_set_dai_sysclk(struct snd_soc_dai *codec_dai,
  int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct wm8750_priv *wm8750 = snd_soc_component_get_drvdata(component);

 switch (freq) {
 case 11289600:
 case 12000000:
 case 12288000:
 case 16934400:
 case 18432000:
  wm8750->sysclk = freq;
  return 0;
 }
 return -EINVAL;
}
