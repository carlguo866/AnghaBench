
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_mixer_control {unsigned int reg; unsigned int rreg; unsigned int shift; unsigned int rshift; int max; int min; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int fls (int) ;
 struct snd_soc_component* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_soc_component_read (struct snd_soc_component*,unsigned int,unsigned int*) ;
 scalar_t__ snd_soc_volsw_is_stereo (struct soc_mixer_control*) ;

int snd_soc_get_volsw_sx(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
 struct soc_mixer_control *mc =
     (struct soc_mixer_control *)kcontrol->private_value;
 unsigned int reg = mc->reg;
 unsigned int reg2 = mc->rreg;
 unsigned int shift = mc->shift;
 unsigned int rshift = mc->rshift;
 int max = mc->max;
 int min = mc->min;
 unsigned int mask = (1U << (fls(min + max) - 1)) - 1;
 unsigned int val;
 int ret;

 ret = snd_soc_component_read(component, reg, &val);
 if (ret < 0)
  return ret;

 ucontrol->value.integer.value[0] = ((val >> shift) - min) & mask;

 if (snd_soc_volsw_is_stereo(mc)) {
  ret = snd_soc_component_read(component, reg2, &val);
  if (ret < 0)
   return ret;

  val = ((val >> rshift) - min) & mask;
  ucontrol->value.integer.value[1] = val;
 }

 return 0;
}
