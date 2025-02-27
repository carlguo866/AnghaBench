
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct ak4641_priv {int sysclk; int playback_fs; } ;


 int AK4641_MODE2 ;
 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int ak4641_set_deemph (struct snd_soc_component*) ;
 int dev_err (int ,char*,int) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 struct ak4641_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int ak4641_i2s_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params,
     struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct ak4641_priv *ak4641 = snd_soc_component_get_drvdata(component);
 int rate = params_rate(params), fs = 256;
 u8 mode2;

 if (rate)
  fs = ak4641->sysclk / rate;
 else
  return -EINVAL;


 switch (fs) {
 case 1024:
  mode2 = (0x2 << 5);
  break;
 case 512:
  mode2 = (0x1 << 5);
  break;
 case 256:
  mode2 = (0x0 << 5);
  break;
 default:
  dev_err(component->dev, "Error: unsupported fs=%d\n", fs);
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, AK4641_MODE2, (0x3 << 5), mode2);


 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  ak4641->playback_fs = rate;
  ak4641_set_deemph(component);
 }

 return 0;
}
