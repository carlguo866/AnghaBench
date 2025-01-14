
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sst_pdata {struct device* dma_dev; } ;
struct snd_soc_pcm_runtime {TYPE_3__* cpu_dai; struct snd_pcm* pcm; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm {TYPE_1__* streams; } ;
struct hsw_priv_data {TYPE_2__** pcm; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int buffer_bytes_max; } ;
struct TYPE_7__ {size_t id; } ;
struct TYPE_6__ {struct snd_pcm* hsw_pcm; } ;
struct TYPE_5__ {scalar_t__ substream; } ;


 int DRV_NAME ;
 int SNDRV_DMA_TYPE_DEV_SG ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 struct hsw_priv_data* dev_get_drvdata (int ) ;
 struct sst_pdata* dev_get_platdata (int ) ;
 TYPE_4__ hsw_pcm_hardware ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,struct device*,int ,int ) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static int hsw_pcm_new(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_pcm *pcm = rtd->pcm;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct sst_pdata *pdata = dev_get_platdata(component->dev);
 struct hsw_priv_data *priv_data = dev_get_drvdata(component->dev);
 struct device *dev = pdata->dma_dev;

 if (pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream ||
   pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream) {
  snd_pcm_lib_preallocate_pages_for_all(pcm,
   SNDRV_DMA_TYPE_DEV_SG,
   dev,
   hsw_pcm_hardware.buffer_bytes_max,
   hsw_pcm_hardware.buffer_bytes_max);
 }
 if (pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream)
  priv_data->pcm[rtd->cpu_dai->id][SNDRV_PCM_STREAM_PLAYBACK].hsw_pcm = pcm;
 if (pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream)
  priv_data->pcm[rtd->cpu_dai->id][SNDRV_PCM_STREAM_CAPTURE].hsw_pcm = pcm;

 return 0;
}
