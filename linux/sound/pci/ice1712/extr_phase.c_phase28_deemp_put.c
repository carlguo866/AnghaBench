
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int WM_DAC_CTRL2 ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int wm_get (struct snd_ice1712*,int ) ;
 int wm_put (struct snd_ice1712*,int ,int) ;

__attribute__((used)) static int phase28_deemp_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 int temp, temp2;
 temp = wm_get(ice, WM_DAC_CTRL2);
 temp2 = temp;
 if (ucontrol->value.integer.value[0])
  temp |= 0xf;
 else
  temp &= ~0xf;
 if (temp != temp2) {
  wm_put(ice, WM_DAC_CTRL2, temp);
  return 1;
 }
 return 0;
}
