
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;
struct snd_harmony {struct snd_pcm_substream* psubs; } ;


 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int hw_constraint_rates ;
 int snd_harmony_playback ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;
 struct snd_harmony* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int
snd_harmony_playback_open(struct snd_pcm_substream *ss)
{
 struct snd_harmony *h = snd_pcm_substream_chip(ss);
 struct snd_pcm_runtime *rt = ss->runtime;
 int err;

 h->psubs = ss;
 rt->hw = snd_harmony_playback;
 snd_pcm_hw_constraint_list(rt, 0, SNDRV_PCM_HW_PARAM_RATE,
       &hw_constraint_rates);

 err = snd_pcm_hw_constraint_integer(rt, SNDRV_PCM_HW_PARAM_PERIODS);
 if (err < 0)
  return err;

 return 0;
}
