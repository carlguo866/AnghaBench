
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ice1712_eeprom {int dummy; } ;
struct snd_ctl_elem_info {int count; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_BYTES ;

__attribute__((used)) static int snd_ice1712_eeprom_info(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_info *uinfo)
{
 uinfo->type = SNDRV_CTL_ELEM_TYPE_BYTES;
 uinfo->count = sizeof(struct snd_ice1712_eeprom);
 return 0;
}
