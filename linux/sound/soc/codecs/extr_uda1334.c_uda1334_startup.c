
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uda1334_priv {int mute; int rate_constraint; int sysclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int runtime; } ;


 int EINVAL ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int dev_err (int ,char*) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,int *) ;
 struct uda1334_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int uda1334_startup(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct uda1334_priv *uda1334 = snd_soc_component_get_drvdata(component);





 if (!uda1334->sysclk) {
  dev_err(component->dev,
   "No MCLK configured, call set_sysclk() on init\n");
  return -EINVAL;
 }

 snd_pcm_hw_constraint_list(substream->runtime, 0,
       SNDRV_PCM_HW_PARAM_RATE,
       &uda1334->rate_constraint);

 gpiod_set_value_cansleep(uda1334->mute, 1);

 return 0;
}
