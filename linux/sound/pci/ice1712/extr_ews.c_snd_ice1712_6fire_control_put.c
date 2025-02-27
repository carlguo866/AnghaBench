
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int PCF9554_REG_OUTPUT ;
 int snd_ice1712_6fire_read_pca (struct snd_ice1712*,int ) ;
 int snd_ice1712_6fire_write_pca (struct snd_ice1712*,int ,unsigned char) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ice1712_6fire_control_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 int shift = kcontrol->private_value & 0xff;
 int invert = (kcontrol->private_value >> 8) & 1;
 int data, ndata;

 if ((data = snd_ice1712_6fire_read_pca(ice, PCF9554_REG_OUTPUT)) < 0)
  return data;
 ndata = data & ~(1 << shift);
 if (ucontrol->value.integer.value[0])
  ndata |= (1 << shift);
 if (invert)
  ndata ^= (1 << shift);
 if (data != ndata) {
  snd_ice1712_6fire_write_pca(ice, PCF9554_REG_OUTPUT, (unsigned char)ndata);
  return 1;
 }
 return 0;
}
