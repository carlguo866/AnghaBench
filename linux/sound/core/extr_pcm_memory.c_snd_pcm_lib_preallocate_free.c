
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int snd_pcm_lib_preallocate_dma_free (struct snd_pcm_substream*) ;

void snd_pcm_lib_preallocate_free(struct snd_pcm_substream *substream)
{
 snd_pcm_lib_preallocate_dma_free(substream);
}
