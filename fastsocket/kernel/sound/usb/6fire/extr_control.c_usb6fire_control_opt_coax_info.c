
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
 int * opt_coax_texts ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int usb6fire_control_opt_coax_info(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_info *uinfo)
{
 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 1;
 uinfo->value.enumerated.items = 2;
 if (uinfo->value.enumerated.item > 1)
  uinfo->value.enumerated.item = 1;
 strcpy(uinfo->value.enumerated.name,
   opt_coax_texts[uinfo->value.enumerated.item]);
 return 0;
}
