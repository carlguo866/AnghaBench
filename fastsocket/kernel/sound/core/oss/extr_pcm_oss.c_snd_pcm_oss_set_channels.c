
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int runtime; } ;
struct TYPE_2__ {unsigned int channels; int params; } ;
struct snd_pcm_runtime2 {TYPE_1__ oss; } ;
struct snd_pcm_oss_file {struct snd_pcm_substream** streams; } ;


 int EINVAL ;
 struct snd_pcm_runtime2* oss_runtime (int ) ;
 int snd_pcm_oss_get_channels (struct snd_pcm_oss_file*) ;

__attribute__((used)) static int snd_pcm_oss_set_channels(struct snd_pcm_oss_file *pcm_oss_file, unsigned int channels)
{
 int idx;
 if (channels < 1)
  channels = 1;
 if (channels > 128)
  return -EINVAL;
 for (idx = 1; idx >= 0; --idx) {
  struct snd_pcm_substream *substream = pcm_oss_file->streams[idx];
  struct snd_pcm_runtime2 *runtime;
  if (substream == ((void*)0))
   continue;
  runtime = oss_runtime(substream->runtime);
  if (runtime->oss.channels != channels) {
   runtime->oss.params = 1;
   runtime->oss.channels = channels;
  }
 }
 return snd_pcm_oss_get_channels(pcm_oss_file);
}
