
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct bcm2835_i2s_dev {int * dma_data; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 struct bcm2835_i2s_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;

__attribute__((used)) static int bcm2835_i2s_dai_probe(struct snd_soc_dai *dai)
{
 struct bcm2835_i2s_dev *dev = snd_soc_dai_get_drvdata(dai);

 snd_soc_dai_init_dma_data(dai,
   &dev->dma_data[SNDRV_PCM_STREAM_PLAYBACK],
   &dev->dma_data[SNDRV_PCM_STREAM_CAPTURE]);

 return 0;
}
