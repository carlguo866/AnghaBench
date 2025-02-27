
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;
struct dmaengine_pcm {struct dma_chan** chan; } ;
struct dma_chan {int dummy; } ;


 int SND_DMAENGINE_PCM_DRV_NAME ;
 int dmaengine_pcm_set_runtime_hwparams (struct snd_pcm_substream*) ;
 int snd_dmaengine_pcm_open (struct snd_pcm_substream*,struct dma_chan*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 struct dmaengine_pcm* soc_component_to_pcm (struct snd_soc_component*) ;

__attribute__((used)) static int dmaengine_pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component =
  snd_soc_rtdcom_lookup(rtd, SND_DMAENGINE_PCM_DRV_NAME);
 struct dmaengine_pcm *pcm = soc_component_to_pcm(component);
 struct dma_chan *chan = pcm->chan[substream->stream];
 int ret;

 ret = dmaengine_pcm_set_runtime_hwparams(substream);
 if (ret)
  return ret;

 return snd_dmaengine_pcm_open(substream, chan);
}
