
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_riptide {int pci; struct snd_pcm* pcm; int card; } ;
struct snd_pcm {int name; scalar_t__ info_flags; struct snd_riptide* private_data; } ;


 int PLAYBACK_SUBSTREAMS ;
 int SNDRV_DMA_TYPE_DEV_SG ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int,int ,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int snd_riptide_capture_ops ;
 int snd_riptide_playback_ops ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_riptide_pcm(struct snd_riptide *chip, int device)
{
 struct snd_pcm *pcm;
 int err;

 if ((err =
      snd_pcm_new(chip->card, "RIPTIDE", device, PLAYBACK_SUBSTREAMS, 1,
    &pcm)) < 0)
  return err;
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK,
   &snd_riptide_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE,
   &snd_riptide_capture_ops);
 pcm->private_data = chip;
 pcm->info_flags = 0;
 strcpy(pcm->name, "RIPTIDE");
 chip->pcm = pcm;
 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV_SG,
           snd_dma_pci_data(chip->pci),
           64 * 1024, 128 * 1024);
 return 0;
}
