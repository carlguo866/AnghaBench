
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1 {scalar_t__ audigy; } ;
struct TYPE_3__ {int max; scalar_t__ min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_emu10k1_efx_send_routing_info(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
 struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = emu->audigy ? 8 : 4;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = emu->audigy ? 0x3f : 0x0f;
 return 0;
}
