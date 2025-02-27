
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* cpu_dai; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct mtk_base_afe {int dev; } ;
struct TYPE_2__ {int id; } ;


 int AFE_PCM_NAME ;
 int mt8183_rate_transform (int ,unsigned int,int) ;
 struct mtk_base_afe* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static int mt8183_memif_fs(struct snd_pcm_substream *substream,
      unsigned int rate)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component =
  snd_soc_rtdcom_lookup(rtd, AFE_PCM_NAME);
 struct mtk_base_afe *afe = snd_soc_component_get_drvdata(component);
 int id = rtd->cpu_dai->id;

 return mt8183_rate_transform(afe->dev, rate, id);
}
