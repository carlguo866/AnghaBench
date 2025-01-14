
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct axg_tdm_stream {void* channels; void* width; int physical_width; int mask; } ;
struct axg_tdm_iface {unsigned int slot_width; int rate; } ;


 int EINVAL ;
 unsigned int axg_tdm_slots_total (int ) ;
 int dev_err (int ,char*) ;
 void* params_channels (struct snd_pcm_hw_params*) ;
 int params_physical_width (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 void* params_width (struct snd_pcm_hw_params*) ;
 struct axg_tdm_stream* snd_soc_dai_get_dma_data (struct snd_soc_dai*,struct snd_pcm_substream*) ;
 struct axg_tdm_iface* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_tdm_iface_set_stream(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *params,
        struct snd_soc_dai *dai)
{
 struct axg_tdm_iface *iface = snd_soc_dai_get_drvdata(dai);
 struct axg_tdm_stream *ts = snd_soc_dai_get_dma_data(dai, substream);
 unsigned int channels = params_channels(params);
 unsigned int width = params_width(params);


 iface->rate = params_rate(params);


 if (axg_tdm_slots_total(ts->mask) < channels) {
  dev_err(dai->dev, "not enough slots for channels\n");
  return -EINVAL;
 }

 if (iface->slot_width < width) {
  dev_err(dai->dev, "incompatible slots width for stream\n");
  return -EINVAL;
 }


 ts->physical_width = params_physical_width(params);
 ts->width = params_width(params);
 ts->channels = params_channels(params);

 return 0;
}
