
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int channels_max; int formats; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;


 int SNDRV_PCM_FMTBIT_S16_LE ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int constraints_channels ;
 int constraints_rates ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;
 int snd_pcm_hw_constraint_msbits (struct snd_pcm_runtime*,int ,int,int) ;

__attribute__((used)) static int kbl_fe_startup(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 runtime->hw.channels_max = 2;
 snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
        &constraints_channels);

 runtime->hw.formats = SNDRV_PCM_FMTBIT_S16_LE;
 snd_pcm_hw_constraint_msbits(runtime, 0, 16, 16);

 snd_pcm_hw_constraint_list(runtime, 0,
    SNDRV_PCM_HW_PARAM_RATE, &constraints_rates);

 return 0;
}
