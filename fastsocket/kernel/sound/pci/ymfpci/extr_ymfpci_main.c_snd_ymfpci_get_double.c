
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ymfpci {int reg_lock; } ;
struct snd_kcontrol {unsigned int private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 struct snd_ymfpci* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned int snd_ymfpci_readl (struct snd_ymfpci*,unsigned int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ymfpci_get_double(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ymfpci *chip = snd_kcontrol_chip(kcontrol);
 unsigned int reg = kcontrol->private_value;
 unsigned int shift_left = 0, shift_right = 16, mask = 16383;
 unsigned int val;

 if (reg < 0x80 || reg >= 0xc0)
  return -EINVAL;
 spin_lock_irq(&chip->reg_lock);
 val = snd_ymfpci_readl(chip, reg);
 spin_unlock_irq(&chip->reg_lock);
 ucontrol->value.integer.value[0] = (val >> shift_left) & mask;
 ucontrol->value.integer.value[1] = (val >> shift_right) & mask;
 return 0;
}
