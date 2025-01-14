
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int name; scalar_t__ info_flags; struct snd_ice1712* private_data; } ;
struct snd_ice1712 {int pci; struct snd_pcm* pcm_ds; int card; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_dma_pci_data (int ) ;
 int snd_ice1712_playback_ds_ops ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int,int,int ,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_ice1712_pcm_ds(struct snd_ice1712 *ice, int device)
{
 struct snd_pcm *pcm;
 int err;

 err = snd_pcm_new(ice->card, "ICE1712 consumer (DS)", device, 6, 0, &pcm);
 if (err < 0)
  return err;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_ice1712_playback_ds_ops);

 pcm->private_data = ice;
 pcm->info_flags = 0;
 strcpy(pcm->name, "ICE1712 consumer (DS)");
 ice->pcm_ds = pcm;

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(ice->pci), 64*1024, 128*1024);

 return 0;
}
