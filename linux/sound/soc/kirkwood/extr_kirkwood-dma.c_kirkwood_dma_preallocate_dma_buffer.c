
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dev; int type; } ;
struct snd_dma_buffer {size_t bytes; int * private_data; int area; int addr; TYPE_1__ dev; } ;
struct snd_pcm_substream {struct snd_dma_buffer dma_buffer; } ;
struct snd_pcm {TYPE_2__* card; TYPE_3__* streams; } ;
struct TYPE_8__ {size_t buffer_bytes_max; } ;
struct TYPE_7__ {struct snd_pcm_substream* substream; } ;
struct TYPE_6__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_DMA_TYPE_DEV ;
 int dma_alloc_coherent (int ,size_t,int *,int ) ;
 TYPE_4__ kirkwood_dma_snd_hw ;

__attribute__((used)) static int kirkwood_dma_preallocate_dma_buffer(struct snd_pcm *pcm,
  int stream)
{
 struct snd_pcm_substream *substream = pcm->streams[stream].substream;
 struct snd_dma_buffer *buf = &substream->dma_buffer;
 size_t size = kirkwood_dma_snd_hw.buffer_bytes_max;

 buf->dev.type = SNDRV_DMA_TYPE_DEV;
 buf->dev.dev = pcm->card->dev;
 buf->area = dma_alloc_coherent(pcm->card->dev, size,
   &buf->addr, GFP_KERNEL);
 if (!buf->area)
  return -ENOMEM;
 buf->bytes = size;
 buf->private_data = ((void*)0);

 return 0;
}
