
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_6__ {int * value; } ;
struct TYPE_5__ {TYPE_3__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct mtk_btcvsd_snd {TYPE_1__* tx; } ;
struct TYPE_4__ {int mute; } ;


 struct mtk_btcvsd_snd* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int btcvsd_tx_mute_get(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *cmpnt = snd_soc_kcontrol_component(kcontrol);
 struct mtk_btcvsd_snd *bt = snd_soc_component_get_drvdata(cmpnt);

 if (!bt->tx) {
  ucontrol->value.integer.value[0] = 0;
  return 0;
 }

 ucontrol->value.integer.value[0] = bt->tx->mute;
 return 0;
}
