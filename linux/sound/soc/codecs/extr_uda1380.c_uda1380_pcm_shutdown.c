
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;


 int R00_DAC_CLK ;
 int R00_EN_ADC ;
 int R00_EN_DAC ;
 int R00_EN_DEC ;
 int R00_EN_INT ;
 int R02_PON_PLL ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int UDA1380_CLK ;
 int UDA1380_PM ;
 int uda1380_read_reg_cache (struct snd_soc_component*,int ) ;
 int uda1380_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static void uda1380_pcm_shutdown(struct snd_pcm_substream *substream,
     struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 u16 clk = uda1380_read_reg_cache(component, UDA1380_CLK);


 if (clk & R00_DAC_CLK) {
  u16 pm = uda1380_read_reg_cache(component, UDA1380_PM);
  uda1380_write(component, UDA1380_PM, ~R02_PON_PLL & pm);
 }

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  clk &= ~(R00_EN_DAC | R00_EN_INT);
 else
  clk &= ~(R00_EN_ADC | R00_EN_DEC);

 uda1380_write(component, UDA1380_CLK, clk);
}
