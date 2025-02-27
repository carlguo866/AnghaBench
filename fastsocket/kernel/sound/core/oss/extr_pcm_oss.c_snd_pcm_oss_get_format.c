
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int runtime; } ;
struct snd_pcm_oss_file {int dummy; } ;
struct TYPE_3__ {int format; } ;
struct TYPE_4__ {TYPE_1__ oss; } ;


 TYPE_2__* oss_runtime (int ) ;
 int snd_pcm_oss_get_active_substream (struct snd_pcm_oss_file*,struct snd_pcm_substream**) ;

__attribute__((used)) static int snd_pcm_oss_get_format(struct snd_pcm_oss_file *pcm_oss_file)
{
 struct snd_pcm_substream *substream;
 int err;

 if ((err = snd_pcm_oss_get_active_substream(pcm_oss_file, &substream)) < 0)
  return err;
 return oss_runtime(substream->runtime)->oss.format;
}
