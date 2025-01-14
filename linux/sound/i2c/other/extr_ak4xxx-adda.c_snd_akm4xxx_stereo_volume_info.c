
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {unsigned int max; scalar_t__ min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 unsigned int AK_GET_MASK (int ) ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;

__attribute__((used)) static int snd_akm4xxx_stereo_volume_info(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_info *uinfo)
{
 unsigned int mask = AK_GET_MASK(kcontrol->private_value);

 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = 2;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = mask;
 return 0;
}
