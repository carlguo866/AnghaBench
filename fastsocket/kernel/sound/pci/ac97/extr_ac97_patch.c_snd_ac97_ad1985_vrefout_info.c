
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int items; int item; int name; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_1__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_ac97_ad1985_vrefout_info(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_info *uinfo)
{
 static char *texts[4] = {"High-Z", "3.7 V", "2.25 V", "0 V"};

 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 1;
 uinfo->value.enumerated.items = 4;
 if (uinfo->value.enumerated.item > 3)
  uinfo->value.enumerated.item = 3;
 strcpy(uinfo->value.enumerated.name,
        texts[uinfo->value.enumerated.item]);
 return 0;
}
