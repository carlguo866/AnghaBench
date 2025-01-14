
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pmac {struct pmac_tumbler* mixer_data; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct pmac_tumbler {scalar_t__ capture_source; } ;


 int snapper_set_capture_source (struct pmac_tumbler*) ;
 struct snd_pmac* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snapper_put_capture_source(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct snd_pmac *chip = snd_kcontrol_chip(kcontrol);
 struct pmac_tumbler *mix = chip->mixer_data;
 int change;

 change = ucontrol->value.enumerated.item[0] != mix->capture_source;
 if (change) {
  mix->capture_source = !!ucontrol->value.enumerated.item[0];
  snapper_set_capture_source(mix);
 }
 return change;
}
