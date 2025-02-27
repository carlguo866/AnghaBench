
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ad1816a {int lock; } ;


 unsigned short snd_ad1816a_read (struct snd_ad1816a*,int) ;
 int snd_ad1816a_write (struct snd_ad1816a*,int,unsigned short) ;
 struct snd_ad1816a* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_ad1816a_put_double(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ad1816a *chip = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int reg = kcontrol->private_value & 0xff;
 int shift_left = (kcontrol->private_value >> 8) & 0x0f;
 int shift_right = (kcontrol->private_value >> 12) & 0x0f;
 int mask = (kcontrol->private_value >> 16) & 0xff;
 int invert = (kcontrol->private_value >> 24) & 0xff;
 int change;
 unsigned short old_val, val1, val2;

 val1 = ucontrol->value.integer.value[0] & mask;
 val2 = ucontrol->value.integer.value[1] & mask;
 if (invert) {
  val1 = mask - val1;
  val2 = mask - val2;
 }
 val1 <<= shift_left;
 val2 <<= shift_right;
 spin_lock_irqsave(&chip->lock, flags);
 old_val = snd_ad1816a_read(chip, reg);
 val1 = (old_val & ~((mask << shift_left) | (mask << shift_right))) | val1 | val2;
 change = val1 != old_val;
 snd_ad1816a_write(chip, reg, val1);
 spin_unlock_irqrestore(&chip->lock, flags);
 return change;
}
