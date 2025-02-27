
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int CS8415_CTRL1 ;
 unsigned char aureon_cs8415_get (struct snd_ice1712*,int ) ;
 int aureon_cs8415_put (struct snd_ice1712*,int ,unsigned char) ;
 int snd_ice1712_restore_gpio_status (struct snd_ice1712*) ;
 int snd_ice1712_save_gpio_status (struct snd_ice1712*) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int aureon_cs8415_mute_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned char oval, nval;
 int change;
 snd_ice1712_save_gpio_status(ice);
 oval = aureon_cs8415_get(ice, CS8415_CTRL1);
 if (ucontrol->value.integer.value[0])
  nval = oval & ~0x20;
 else
  nval = oval | 0x20;
 change = (oval != nval);
 if (change)
  aureon_cs8415_put(ice, CS8415_CTRL1, nval);
 snd_ice1712_restore_gpio_status(ice);
 return change;
}
