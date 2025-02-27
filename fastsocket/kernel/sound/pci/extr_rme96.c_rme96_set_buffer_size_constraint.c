
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int dummy; } ;
struct rme96 {unsigned int playback_periodsize; unsigned int capture_periodsize; } ;


 unsigned int RME96_BUFFER_SIZE ;
 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 int hw_constraints_period_bytes ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void
rme96_set_buffer_size_constraint(struct rme96 *rme96,
     struct snd_pcm_runtime *runtime)
{
 unsigned int size;

 snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
         RME96_BUFFER_SIZE, RME96_BUFFER_SIZE);
 if ((size = rme96->playback_periodsize) != 0 ||
     (size = rme96->capture_periodsize) != 0)
  snd_pcm_hw_constraint_minmax(runtime,
          SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
          size, size);
 else
  snd_pcm_hw_constraint_list(runtime, 0,
        SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
        &hw_constraints_period_bytes);
}
