
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct snd_pcm_oss_file {struct snd_pcm_substream** streams; } ;
struct TYPE_3__ {scalar_t__ trigger; } ;
struct TYPE_4__ {TYPE_1__ oss; } ;


 int PCM_ENABLE_INPUT ;
 int PCM_ENABLE_OUTPUT ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;

__attribute__((used)) static int snd_pcm_oss_get_trigger(struct snd_pcm_oss_file *pcm_oss_file)
{
 struct snd_pcm_substream *psubstream = ((void*)0), *csubstream = ((void*)0);
 int result = 0;

 psubstream = pcm_oss_file->streams[SNDRV_PCM_STREAM_PLAYBACK];
 csubstream = pcm_oss_file->streams[SNDRV_PCM_STREAM_CAPTURE];
 if (psubstream && psubstream->runtime && psubstream->runtime->oss.trigger)
  result |= PCM_ENABLE_OUTPUT;
 if (csubstream && csubstream->runtime && csubstream->runtime->oss.trigger)
  result |= PCM_ENABLE_INPUT;
 return result;
}
