
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_ice1712 {struct se_spec* spec; } ;
struct TYPE_4__ {int * item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct se_spec {TYPE_3__* vol; } ;
struct TYPE_6__ {int ch1; } ;


 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int se200pci_cont_enum_get(struct snd_kcontrol *kc,
      struct snd_ctl_elem_value *uc)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kc);
 struct se_spec *spec = ice->spec;
 int n = kc->private_value;
 uc->value.enumerated.item[0] = spec->vol[n].ch1;
 return 0;
}
