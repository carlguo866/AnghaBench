
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


 unsigned short aureon_ac97_read (struct snd_ice1712*,int) ;
 int aureon_ac97_write (struct snd_ice1712*,int,unsigned short) ;
 int snd_ice1712_restore_gpio_status (struct snd_ice1712*) ;
 int snd_ice1712_save_gpio_status (struct snd_ice1712*) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int aureon_ac97_mute_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned short ovol, nvol;
 int change;

 snd_ice1712_save_gpio_status(ice);

 ovol = aureon_ac97_read(ice, kcontrol->private_value & 0x7F);
 nvol = (ucontrol->value.integer.value[0] ? 0x0000 : 0x8000) | (ovol & ~0x8000);

 change = (ovol != nvol);
 if (change)
  aureon_ac97_write(ice, kcontrol->private_value & 0x7F, nvol);

 snd_ice1712_restore_gpio_status(ice);

 return change;
}
