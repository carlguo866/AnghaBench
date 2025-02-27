
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* card; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct TYPE_2__ {struct snd_soc_dapm_context dapm; } ;


 int snd_soc_dapm_nc_pin (struct snd_soc_dapm_context*,char*) ;

__attribute__((used)) static int smdk_wm8994_init_paiftx(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_dapm_context *dapm = &rtd->card->dapm;


 snd_soc_dapm_nc_pin(dapm, "HPOUT2P");
 snd_soc_dapm_nc_pin(dapm, "HPOUT2N");
 snd_soc_dapm_nc_pin(dapm, "SPKOUTLN");
 snd_soc_dapm_nc_pin(dapm, "SPKOUTLP");
 snd_soc_dapm_nc_pin(dapm, "SPKOUTRP");
 snd_soc_dapm_nc_pin(dapm, "SPKOUTRN");
 snd_soc_dapm_nc_pin(dapm, "LINEOUT1N");
 snd_soc_dapm_nc_pin(dapm, "LINEOUT1P");
 snd_soc_dapm_nc_pin(dapm, "LINEOUT2N");
 snd_soc_dapm_nc_pin(dapm, "LINEOUT2P");
 snd_soc_dapm_nc_pin(dapm, "IN1LP");
 snd_soc_dapm_nc_pin(dapm, "IN2LP:VXRN");
 snd_soc_dapm_nc_pin(dapm, "IN1RP");
 snd_soc_dapm_nc_pin(dapm, "IN2RP:VXRP");

 return 0;
}
