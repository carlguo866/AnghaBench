
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tse850_priv {int loop2_cache; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct tse850_priv* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 struct snd_soc_dapm_context* snd_soc_dapm_kcontrol_dapm (struct snd_kcontrol*) ;

__attribute__((used)) static int tse850_get_mux2(struct snd_kcontrol *kctrl,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dapm_context *dapm = snd_soc_dapm_kcontrol_dapm(kctrl);
 struct snd_soc_card *card = dapm->card;
 struct tse850_priv *tse850 = snd_soc_card_get_drvdata(card);

 ucontrol->value.enumerated.item[0] = tse850->loop2_cache;

 return 0;
}
