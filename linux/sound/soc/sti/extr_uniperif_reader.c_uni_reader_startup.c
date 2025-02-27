
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniperif {int irq_lock; struct snd_pcm_substream* substream; } ;
struct TYPE_2__ {struct uniperif* uni; } ;
struct sti_uniperiph_data {TYPE_1__ dai_data; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int runtime; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 int UNIPERIF_TYPE_IS_TDM (struct uniperif*) ;
 int snd_pcm_hw_rule_add (int ,int ,int ,int ,struct uniperif*,int ,int) ;
 struct sti_uniperiph_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sti_uniperiph_fix_tdm_chan ;
 int sti_uniperiph_fix_tdm_format ;

__attribute__((used)) static int uni_reader_startup(struct snd_pcm_substream *substream,
         struct snd_soc_dai *dai)
{
 struct sti_uniperiph_data *priv = snd_soc_dai_get_drvdata(dai);
 struct uniperif *reader = priv->dai_data.uni;
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&reader->irq_lock, flags);
 reader->substream = substream;
 spin_unlock_irqrestore(&reader->irq_lock, flags);

 if (!UNIPERIF_TYPE_IS_TDM(reader))
  return 0;


 ret = snd_pcm_hw_rule_add(substream->runtime, 0,
      SNDRV_PCM_HW_PARAM_CHANNELS,
      sti_uniperiph_fix_tdm_chan,
      reader, SNDRV_PCM_HW_PARAM_CHANNELS,
      -1);
 if (ret < 0)
  return ret;

 return snd_pcm_hw_rule_add(substream->runtime, 0,
       SNDRV_PCM_HW_PARAM_FORMAT,
       sti_uniperiph_fix_tdm_format,
       reader, SNDRV_PCM_HW_PARAM_FORMAT,
       -1);
}
