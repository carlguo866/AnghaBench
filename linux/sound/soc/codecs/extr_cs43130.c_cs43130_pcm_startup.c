
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int runtime; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 int cs43130_asp_constraints ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,int *) ;

__attribute__((used)) static int cs43130_pcm_startup(struct snd_pcm_substream *substream,
          struct snd_soc_dai *dai)
{
 return snd_pcm_hw_constraint_list(substream->runtime, 0,
       SNDRV_PCM_HW_PARAM_RATE,
       &cs43130_asp_constraints);
}
