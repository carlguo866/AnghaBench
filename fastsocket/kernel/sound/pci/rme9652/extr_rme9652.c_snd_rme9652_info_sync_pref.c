
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_rme9652 {scalar_t__ ss_channels; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int items; int item; int name; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 scalar_t__ RME9652_NCHANNELS ;
 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 struct snd_rme9652* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_rme9652_info_sync_pref(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
 static char *texts[4] = {"IEC958 In", "ADAT1 In", "ADAT2 In", "ADAT3 In"};
 struct snd_rme9652 *rme9652 = snd_kcontrol_chip(kcontrol);

 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 1;
 uinfo->value.enumerated.items = rme9652->ss_channels == RME9652_NCHANNELS ? 4 : 3;
 if (uinfo->value.enumerated.item >= uinfo->value.enumerated.items)
  uinfo->value.enumerated.item = uinfo->value.enumerated.items - 1;
 strcpy(uinfo->value.enumerated.name, texts[uinfo->value.enumerated.item]);
 return 0;
}
