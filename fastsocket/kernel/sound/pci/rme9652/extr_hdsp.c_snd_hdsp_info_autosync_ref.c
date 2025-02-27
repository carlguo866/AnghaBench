
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int items; int item; int name; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_hdsp_info_autosync_ref(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
 static char *texts[] = {"Word", "ADAT Sync", "IEC958", "None", "ADAT1", "ADAT2", "ADAT3" };

 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 1;
 uinfo->value.enumerated.items = 7;
 if (uinfo->value.enumerated.item >= uinfo->value.enumerated.items)
  uinfo->value.enumerated.item = uinfo->value.enumerated.items - 1;
 strcpy(uinfo->value.enumerated.name, texts[uinfo->value.enumerated.item]);
 return 0;
}
