
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int AIC32X4_SCLKCTL ;
 struct snd_soc_component* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;

__attribute__((used)) static int aic32x4_get_mfp3_gpio(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
 u8 val;

 val = snd_soc_component_read32(component, AIC32X4_SCLKCTL);

 ucontrol->value.integer.value[0] = (val & 0x01);

 return 0;
}
