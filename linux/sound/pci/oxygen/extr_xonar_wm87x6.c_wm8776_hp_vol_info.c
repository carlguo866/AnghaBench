
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int min; int max; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_INTEGER ;

__attribute__((used)) static int wm8776_hp_vol_info(struct snd_kcontrol *ctl,
         struct snd_ctl_elem_info *info)
{
 info->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 info->count = 2;
 info->value.integer.min = 0x79 - 60;
 info->value.integer.max = 0x7f;
 return 0;
}
