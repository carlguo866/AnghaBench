
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
struct ak4117 {int lock; } ;


 struct ak4117* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ak4117_in_error_get(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct ak4117 *chip = snd_kcontrol_chip(kcontrol);
 long *ptr;

 spin_lock_irq(&chip->lock);
 ptr = (long *)(((char *)chip) + kcontrol->private_value);
 ucontrol->value.integer.value[0] = *ptr;
 *ptr = 0;
 spin_unlock_irq(&chip->lock);
 return 0;
}
