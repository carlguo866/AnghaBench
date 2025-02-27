
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tscs454 {struct aif* aifs; } ;
struct snd_soc_dai {size_t id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct aif {int dummy; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int aif_free (struct snd_soc_component*,struct aif*,int) ;
 struct tscs454* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int tscs454_hw_free(struct snd_pcm_substream *substream,
  struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct tscs454 *tscs454 = snd_soc_component_get_drvdata(component);
 struct aif *aif = &tscs454->aifs[dai->id];

 return aif_free(component, aif,
   substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
}
