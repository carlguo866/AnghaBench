
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int reg_lock; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned char ICE1712_ROUTE_AC97 ;
 int ICEMT (struct snd_ice1712*,int ) ;
 int MONITOR_ROUTECTRL ;
 unsigned char inb (int ) ;
 int outb (unsigned char,int ) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ice1712_digmix_route_ac97_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned char val, nval;

 spin_lock_irq(&ice->reg_lock);
 val = inb(ICEMT(ice, MONITOR_ROUTECTRL));
 nval = val & ~ICE1712_ROUTE_AC97;
 if (ucontrol->value.integer.value[0])
  nval |= ICE1712_ROUTE_AC97;
 outb(nval, ICEMT(ice, MONITOR_ROUTECTRL));
 spin_unlock_irq(&ice->reg_lock);
 return val != nval;
}
