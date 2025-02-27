
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int STAC946X_MIC_L_VOLUME ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stac9460_get (struct snd_ice1712*,int) ;

__attribute__((used)) static int stac9460_adc_vol_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 int i, reg;
 unsigned char vol;

 for (i = 0; i < 2; ++i) {
  reg = STAC946X_MIC_L_VOLUME + i;
  vol = stac9460_get(ice, reg) & 0x0f;
  ucontrol->value.integer.value[i] = 0x0f - vol;
 }

 return 0;
}
