
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;



__attribute__((used)) static int snd_ftu_eff_switch_get(struct snd_kcontrol *kctl,
     struct snd_ctl_elem_value *ucontrol)
{
 ucontrol->value.enumerated.item[0] = kctl->private_value >> 24;
 return 0;
}
