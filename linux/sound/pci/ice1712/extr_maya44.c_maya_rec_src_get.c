
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_maya44 {int ice; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int GPIO_MIC_RELAY ;
 int snd_ice1712_gpio_read (int ) ;
 struct snd_maya44* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int maya_rec_src_get(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct snd_maya44 *chip = snd_kcontrol_chip(kcontrol);
 int sel;

 if (snd_ice1712_gpio_read(chip->ice) & (1 << GPIO_MIC_RELAY))
  sel = 1;
 else
  sel = 0;
 ucontrol->value.enumerated.item[0] = sel;
 return 0;
}
