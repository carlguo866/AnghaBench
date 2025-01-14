
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
struct cmipci {int chip_version; } ;


 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 struct cmipci* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_cmipci_line_in_mode_info(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_info *uinfo)
{
 struct cmipci *cm = snd_kcontrol_chip(kcontrol);
 static char *texts[3] = { "Line-In", "Rear Output", "Bass Output" };
 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 1;
 uinfo->value.enumerated.items = cm->chip_version >= 39 ? 3 : 2;
 if (uinfo->value.enumerated.item >= uinfo->value.enumerated.items)
  uinfo->value.enumerated.item = uinfo->value.enumerated.items - 1;
 strcpy(uinfo->value.enumerated.name, texts[uinfo->value.enumerated.item]);
 return 0;
}
