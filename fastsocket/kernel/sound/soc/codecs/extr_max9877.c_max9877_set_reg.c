
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_mixer_control {unsigned int reg; unsigned int shift; unsigned int max; unsigned int invert; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned int* max9877_regs ;
 int max9877_write_regs () ;

__attribute__((used)) static int max9877_set_reg(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_value *ucontrol)
{
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 unsigned int reg = mc->reg;
 unsigned int shift = mc->shift;
 unsigned int mask = mc->max;
 unsigned int invert = mc->invert;
 unsigned int val = (ucontrol->value.integer.value[0] & mask);

 if (invert)
  val = mask - val;

 if (((max9877_regs[reg] >> shift) & mask) == val)
  return 0;

 max9877_regs[reg] &= ~(mask << shift);
 max9877_regs[reg] |= val << shift;
 max9877_write_regs();

 return 1;
}
