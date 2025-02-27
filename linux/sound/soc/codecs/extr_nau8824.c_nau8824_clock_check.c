
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct nau8824 {int dev; } ;
struct TYPE_4__ {int osr; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int CLK_DA_AD_MAX ;
 int EINVAL ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_err (int ,char*) ;
 TYPE_1__* osr_adc_sel ;
 TYPE_1__* osr_dac_sel ;

__attribute__((used)) static int nau8824_clock_check(struct nau8824 *nau8824,
 int stream, int rate, int osr)
{
 int osrate;

 if (stream == SNDRV_PCM_STREAM_PLAYBACK) {
  if (osr >= ARRAY_SIZE(osr_dac_sel))
   return -EINVAL;
  osrate = osr_dac_sel[osr].osr;
 } else {
  if (osr >= ARRAY_SIZE(osr_adc_sel))
   return -EINVAL;
  osrate = osr_adc_sel[osr].osr;
 }

 if (!osrate || rate * osr > CLK_DA_AD_MAX) {
  dev_err(nau8824->dev, "exceed the maximum frequency of CLK_ADC or CLK_DAC\n");
  return -EINVAL;
 }

 return 0;
}
