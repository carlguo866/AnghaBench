
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm {int name; void* private_free; struct oxygen* private_data; TYPE_1__* streams; } ;
struct TYPE_4__ {int device_config; } ;
struct oxygen {int pci; int card; TYPE_2__ model; scalar_t__ has_ac97_1; } ;
struct TYPE_3__ {int substream; } ;


 int BUFFER_BYTES_MAX ;
 int BUFFER_BYTES_MAX_MULTICH ;
 int CAPTURE_0_FROM_I2S_1 ;
 int CAPTURE_0_FROM_I2S_2 ;
 int CAPTURE_1_FROM_SPDIF ;
 int CAPTURE_2_FROM_AC97_1 ;
 int CAPTURE_2_FROM_I2S_2 ;
 int DEFAULT_BUFFER_BYTES ;
 int DEFAULT_BUFFER_BYTES_MULTICH ;
 int OXYGEN_REC_B_ROUTE_AC97_1 ;
 int OXYGEN_REC_B_ROUTE_MASK ;
 int OXYGEN_REC_ROUTING ;
 int PLAYBACK_0_TO_I2S ;
 int PLAYBACK_1_TO_SPDIF ;
 int PLAYBACK_2_TO_AC97_1 ;
 int SNDRV_DMA_TYPE_DEV ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int oxygen_ac97_ops ;
 int oxygen_multich_ops ;
 void* oxygen_pcm_free ;
 int oxygen_rec_a_ops ;
 int oxygen_rec_b_ops ;
 int oxygen_rec_c_ops ;
 int oxygen_spdif_ops ;
 int oxygen_write8_masked (struct oxygen*,int ,int ,int ) ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages (int ,int ,int ,int ,int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int ,int ) ;
 int snd_pcm_new (int ,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,size_t,int *) ;
 int strcpy (int ,char*) ;

int oxygen_pcm_init(struct oxygen *chip)
{
 struct snd_pcm *pcm;
 int outs, ins;
 int err;

 outs = !!(chip->model.device_config & PLAYBACK_0_TO_I2S);
 ins = !!(chip->model.device_config & (CAPTURE_0_FROM_I2S_1 |
           CAPTURE_0_FROM_I2S_2));
 if (outs | ins) {
  err = snd_pcm_new(chip->card, "Multichannel",
      0, outs, ins, &pcm);
  if (err < 0)
   return err;
  if (outs)
   snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK,
     &oxygen_multich_ops);
  if (chip->model.device_config & CAPTURE_0_FROM_I2S_1)
   snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE,
     &oxygen_rec_a_ops);
  else if (chip->model.device_config & CAPTURE_0_FROM_I2S_2)
   snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE,
     &oxygen_rec_b_ops);
  pcm->private_data = chip;
  pcm->private_free = oxygen_pcm_free;
  strcpy(pcm->name, "Multichannel");
  if (outs)
   snd_pcm_lib_preallocate_pages(pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream,
            SNDRV_DMA_TYPE_DEV,
            snd_dma_pci_data(chip->pci),
            DEFAULT_BUFFER_BYTES_MULTICH,
            BUFFER_BYTES_MAX_MULTICH);
  if (ins)
   snd_pcm_lib_preallocate_pages(pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream,
            SNDRV_DMA_TYPE_DEV,
            snd_dma_pci_data(chip->pci),
            DEFAULT_BUFFER_BYTES,
            BUFFER_BYTES_MAX);
 }

 outs = !!(chip->model.device_config & PLAYBACK_1_TO_SPDIF);
 ins = !!(chip->model.device_config & CAPTURE_1_FROM_SPDIF);
 if (outs | ins) {
  err = snd_pcm_new(chip->card, "Digital", 1, outs, ins, &pcm);
  if (err < 0)
   return err;
  if (outs)
   snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK,
     &oxygen_spdif_ops);
  if (ins)
   snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE,
     &oxygen_rec_c_ops);
  pcm->private_data = chip;
  pcm->private_free = oxygen_pcm_free;
  strcpy(pcm->name, "Digital");
  snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
            snd_dma_pci_data(chip->pci),
            DEFAULT_BUFFER_BYTES,
            BUFFER_BYTES_MAX);
 }

 if (chip->has_ac97_1) {
  outs = !!(chip->model.device_config & PLAYBACK_2_TO_AC97_1);
  ins = !!(chip->model.device_config & CAPTURE_2_FROM_AC97_1);
 } else {
  outs = 0;
  ins = !!(chip->model.device_config & CAPTURE_2_FROM_I2S_2);
 }
 if (outs | ins) {
  err = snd_pcm_new(chip->card, outs ? "AC97" : "Analog2",
      2, outs, ins, &pcm);
  if (err < 0)
   return err;
  if (outs) {
   snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK,
     &oxygen_ac97_ops);
   oxygen_write8_masked(chip, OXYGEN_REC_ROUTING,
          OXYGEN_REC_B_ROUTE_AC97_1,
          OXYGEN_REC_B_ROUTE_MASK);
  }
  if (ins)
   snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE,
     &oxygen_rec_b_ops);
  pcm->private_data = chip;
  pcm->private_free = oxygen_pcm_free;
  strcpy(pcm->name, outs ? "Front Panel" : "Analog 2");
  snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
            snd_dma_pci_data(chip->pci),
            DEFAULT_BUFFER_BYTES,
            BUFFER_BYTES_MAX);
 }
 return 0;
}
