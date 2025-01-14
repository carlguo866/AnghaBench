
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {char* name; int dev_class; scalar_t__ info_flags; struct intel8x0m* private_data; } ;
struct intel8x0m {int pci; struct snd_pcm** pcm; TYPE_1__* card; } ;
struct ich_pcm_table {char* suffix; int prealloc_max_size; int prealloc_size; scalar_t__ capture_ops; scalar_t__ playback_ops; } ;
struct TYPE_2__ {char* shortname; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_CLASS_MODEM ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int ,int ) ;
 int snd_pcm_new (TYPE_1__*,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,scalar_t__) ;
 int sprintf (char*,char*,char*,...) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int snd_intel8x0m_pcm1(struct intel8x0m *chip, int device,
         struct ich_pcm_table *rec)
{
 struct snd_pcm *pcm;
 int err;
 char name[32];

 if (rec->suffix)
  sprintf(name, "Intel ICH - %s", rec->suffix);
 else
  strcpy(name, "Intel ICH");
 err = snd_pcm_new(chip->card, name, device,
     rec->playback_ops ? 1 : 0,
     rec->capture_ops ? 1 : 0, &pcm);
 if (err < 0)
  return err;

 if (rec->playback_ops)
  snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, rec->playback_ops);
 if (rec->capture_ops)
  snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, rec->capture_ops);

 pcm->private_data = chip;
 pcm->info_flags = 0;
 pcm->dev_class = SNDRV_PCM_CLASS_MODEM;
 if (rec->suffix)
  sprintf(pcm->name, "%s - %s", chip->card->shortname, rec->suffix);
 else
  strcpy(pcm->name, chip->card->shortname);
 chip->pcm[device] = pcm;

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(chip->pci),
           rec->prealloc_size,
           rec->prealloc_max_size);

 return 0;
}
