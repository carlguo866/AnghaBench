
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_dma_buffer {int * area; } ;
struct snd_pcm_substream {struct snd_dma_buffer dma_buffer; } ;
struct snd_pcm {TYPE_1__* streams; } ;
struct gen_pool {int dummy; } ;
struct TYPE_4__ {size_t buffer_bytes_max; } ;
struct TYPE_3__ {struct snd_pcm_substream* substream; } ;


 int gen_pool_free (struct gen_pool*,unsigned long,size_t) ;
 TYPE_2__* mmp_pcm_hardware ;
 struct gen_pool* sram_get_gpool (char*) ;

__attribute__((used)) static void mmp_pcm_free_dma_buffers(struct snd_pcm *pcm)
{
 struct snd_pcm_substream *substream;
 struct snd_dma_buffer *buf;
 int stream;
 struct gen_pool *gpool;

 gpool = sram_get_gpool("asram");
 if (!gpool)
  return;

 for (stream = 0; stream < 2; stream++) {
  size_t size = mmp_pcm_hardware[stream].buffer_bytes_max;

  substream = pcm->streams[stream].substream;
  if (!substream)
   continue;

  buf = &substream->dma_buffer;
  if (!buf->area)
   continue;
  gen_pool_free(gpool, (unsigned long)buf->area, size);
  buf->area = ((void*)0);
 }

}
