
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_pcm_substream {int stream; struct snd_soc_pcm_runtime* private_data; } ;
struct s6000_pcm_dma_params {int in_use; int rate; int lock; } ;
struct TYPE_4__ {TYPE_1__* cpu_dai; } ;
struct TYPE_3__ {struct s6000_pcm_dma_params* dma_data; } ;


 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int s6000_pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *soc_runtime = substream->private_data;
 struct s6000_pcm_dma_params *par = soc_runtime->dai->cpu_dai->dma_data;

 spin_lock(&par->lock);
 par->in_use &= ~(1 << substream->stream);
 if (!par->in_use)
  par->rate = -1;
 spin_unlock(&par->lock);

 return snd_pcm_lib_free_pages(substream);
}
