
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {long* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_akm4xxx {int dummy; } ;


 int AK_GET_ADDR (int ) ;
 int AK_GET_CHIP (int ) ;
 int AK_GET_INVERT (int ) ;
 int AK_GET_SHIFT (int ) ;
 unsigned char snd_akm4xxx_get (struct snd_akm4xxx*,int,int) ;
 int snd_akm4xxx_write (struct snd_akm4xxx*,int,int,unsigned char) ;
 struct snd_akm4xxx* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ak4xxx_switch_put(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_akm4xxx *ak = snd_kcontrol_chip(kcontrol);
 int chip = AK_GET_CHIP(kcontrol->private_value);
 int addr = AK_GET_ADDR(kcontrol->private_value);
 int shift = AK_GET_SHIFT(kcontrol->private_value);
 int invert = AK_GET_INVERT(kcontrol->private_value);
 long flag = ucontrol->value.integer.value[0];
 unsigned char val, oval;
 int change;

 if (invert)
  flag = ! flag;
 oval = snd_akm4xxx_get(ak, chip, addr);
 if (flag)
  val = oval | (1<<shift);
 else
  val = oval & ~(1<<shift);
 change = (oval != val);
 if (change)
  snd_akm4xxx_write(ak, chip, addr, val);
 return change;
}
