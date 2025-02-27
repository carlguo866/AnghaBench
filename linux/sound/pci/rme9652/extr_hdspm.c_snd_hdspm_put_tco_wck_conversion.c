
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {scalar_t__* item; } ;
struct TYPE_6__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct hdspm {TYPE_1__* tco; } ;
struct TYPE_4__ {scalar_t__ wordclock; } ;


 int hdspm_tco_write (struct hdspm*) ;
 struct hdspm* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_hdspm_put_tco_wck_conversion(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct hdspm *hdspm = snd_kcontrol_chip(kcontrol);

 if (hdspm->tco->wordclock != ucontrol->value.enumerated.item[0]) {
  hdspm->tco->wordclock = ucontrol->value.enumerated.item[0];

  hdspm_tco_write(hdspm);

  return 1;
 }

 return 0;
}
