
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_trident {scalar_t__ device; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int max; scalar_t__ min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ;
 struct snd_trident* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_trident_pcm_vol_control_info(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_info *uinfo)
{
 struct snd_trident *trident = snd_kcontrol_chip(kcontrol);

 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = 1;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = 255;
 if (trident->device == TRIDENT_DEVICE_ID_SI7018)
  uinfo->value.integer.max = 1023;
 return 0;
}
