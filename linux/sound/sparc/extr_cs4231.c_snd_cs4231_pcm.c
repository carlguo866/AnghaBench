
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {int name; int info_flags; struct snd_cs4231* private_data; } ;
struct snd_cs4231 {struct snd_pcm* pcm; TYPE_1__* op; } ;
struct snd_card {struct snd_cs4231* private_data; } ;
struct TYPE_2__ {int dev; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_INFO_JOINT_DUPLEX ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_cs4231_capture_ops ;
 int snd_cs4231_playback_ops ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int *,int,int) ;
 int snd_pcm_new (struct snd_card*,char*,int ,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_cs4231_pcm(struct snd_card *card)
{
 struct snd_cs4231 *chip = card->private_data;
 struct snd_pcm *pcm;
 int err;

 err = snd_pcm_new(card, "CS4231", 0, 1, 1, &pcm);
 if (err < 0)
  return err;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK,
   &snd_cs4231_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE,
   &snd_cs4231_capture_ops);


 pcm->private_data = chip;
 pcm->info_flags = SNDRV_PCM_INFO_JOINT_DUPLEX;
 strcpy(pcm->name, "CS4231");

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           &chip->op->dev,
           64 * 1024, 128 * 1024);

 chip->pcm = pcm;

 return 0;
}
