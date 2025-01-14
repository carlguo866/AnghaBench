
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {int * value; } ;
struct TYPE_6__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_7__ {scalar_t__ lo_as_master; } ;
struct TYPE_8__ {TYPE_3__ ad18xx; } ;
struct snd_ac97 {TYPE_4__ spec; } ;


 unsigned short AC97_AD198X_HPSEL ;
 unsigned short AC97_AD198X_LOSEL ;
 int AC97_AD_MISC ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,unsigned short,unsigned short) ;
 struct snd_ac97* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ac97_ad1888_lohpsel_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ac97 *ac97 = snd_kcontrol_chip(kcontrol);
 unsigned short val;

 val = !ucontrol->value.integer.value[0];
 if (ac97->spec.ad18xx.lo_as_master)
  val = !val;
 val = val ? (AC97_AD198X_LOSEL | AC97_AD198X_HPSEL) : 0;
 return snd_ac97_update_bits(ac97, AC97_AD_MISC,
        AC97_AD198X_LOSEL | AC97_AD198X_HPSEL, val);
}
