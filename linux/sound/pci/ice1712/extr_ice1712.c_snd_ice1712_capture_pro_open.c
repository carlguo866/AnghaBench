
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {void* rate_max; void* rate_min; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct snd_ice1712 {struct snd_pcm_substream* capture_pro_substream; } ;


 void* PRO_RATE_DEFAULT ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int hw_constraints_rates ;
 scalar_t__ is_pro_rate_locked (struct snd_ice1712*) ;
 TYPE_1__ snd_ice1712_capture_pro ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;
 int snd_pcm_hw_constraint_msbits (struct snd_pcm_runtime*,int ,int,int) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ice1712_capture_pro_open(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 ice->capture_pro_substream = substream;
 runtime->hw = snd_ice1712_capture_pro;
 snd_pcm_set_sync(substream);
 snd_pcm_hw_constraint_msbits(runtime, 0, 32, 24);
 snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_RATE, &hw_constraints_rates);
 if (is_pro_rate_locked(ice)) {
  runtime->hw.rate_min = PRO_RATE_DEFAULT;
  runtime->hw.rate_max = PRO_RATE_DEFAULT;
 }

 return 0;
}
