
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int SND_SOC_DAPM_EVENT_ON (int) ;
 int rear_amp_power (struct snd_soc_codec*,int ) ;

__attribute__((used)) static int rear_amp_event(struct snd_soc_dapm_widget *widget,
     struct snd_kcontrol *kctl, int event)
{
 struct snd_soc_codec *codec = widget->codec;

 return rear_amp_power(codec, SND_SOC_DAPM_EVENT_ON(event));
}
