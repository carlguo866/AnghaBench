
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1_pcm_mixer {int** send_routing; TYPE_4__* epcm; } ;
struct snd_emu10k1 {int reg_lock; scalar_t__ audigy; struct snd_emu10k1_pcm_mixer* pcm_mixer; } ;
struct TYPE_5__ {int* value; } ;
struct TYPE_6__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;
struct TYPE_8__ {TYPE_3__** voices; } ;
struct TYPE_7__ {int number; } ;


 size_t snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_emu10k1_fxrt (struct snd_emu10k1*,int ,int*) ;

__attribute__((used)) static int snd_emu10k1_send_routing_put(struct snd_kcontrol *kcontrol,
                                        struct snd_ctl_elem_value *ucontrol)
{
 unsigned long flags;
 struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 struct snd_emu10k1_pcm_mixer *mix =
  &emu->pcm_mixer[snd_ctl_get_ioffidx(kcontrol, &ucontrol->id)];
 int change = 0, voice, idx, val;
 int num_efx = emu->audigy ? 8 : 4;
 int mask = emu->audigy ? 0x3f : 0x0f;

 spin_lock_irqsave(&emu->reg_lock, flags);
 for (voice = 0; voice < 3; voice++)
  for (idx = 0; idx < num_efx; idx++) {
   val = ucontrol->value.integer.value[(voice * num_efx) + idx] & mask;
   if (mix->send_routing[voice][idx] != val) {
    mix->send_routing[voice][idx] = val;
    change = 1;
   }
  }
 if (change && mix->epcm) {
  if (mix->epcm->voices[0] && mix->epcm->voices[1]) {
   update_emu10k1_fxrt(emu, mix->epcm->voices[0]->number,
         &mix->send_routing[1][0]);
   update_emu10k1_fxrt(emu, mix->epcm->voices[1]->number,
         &mix->send_routing[2][0]);
  } else if (mix->epcm->voices[0]) {
   update_emu10k1_fxrt(emu, mix->epcm->voices[0]->number,
         &mix->send_routing[0][0]);
  }
 }
 spin_unlock_irqrestore(&emu->reg_lock, flags);
 return change;
}
