
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_mixer_control {int max; int min; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int max; int min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_INTEGER ;

int snd_soc_info_volsw_s8(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_info *uinfo)
{
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 int max = mc->max;
 int min = mc->min;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = 2;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = max-min;
 return 0;
}
