
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
struct es1938 {int dummy; } ;


 unsigned char snd_es1938_reg_bits (struct es1938*,int,unsigned char,unsigned char) ;
 struct es1938* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_es1938_put_double(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct es1938 *chip = snd_kcontrol_chip(kcontrol);
 int left_reg = kcontrol->private_value & 0xff;
 int right_reg = (kcontrol->private_value >> 8) & 0xff;
 int shift_left = (kcontrol->private_value >> 16) & 0x07;
 int shift_right = (kcontrol->private_value >> 19) & 0x07;
 int mask = (kcontrol->private_value >> 24) & 0xff;
 int invert = (kcontrol->private_value >> 22) & 1;
 int change;
 unsigned char val1, val2, mask1, mask2;

 val1 = ucontrol->value.integer.value[0] & mask;
 val2 = ucontrol->value.integer.value[1] & mask;
 if (invert) {
  val1 = mask - val1;
  val2 = mask - val2;
 }
 val1 <<= shift_left;
 val2 <<= shift_right;
 mask1 = mask << shift_left;
 mask2 = mask << shift_right;
 if (left_reg != right_reg) {
  change = 0;
  if (snd_es1938_reg_bits(chip, left_reg, mask1, val1) != val1)
   change = 1;
  if (snd_es1938_reg_bits(chip, right_reg, mask2, val2) != val2)
   change = 1;
 } else {
  change = (snd_es1938_reg_bits(chip, left_reg, mask1 | mask2,
           val1 | val2) != (val1 | val2));
 }
 return change;
}
