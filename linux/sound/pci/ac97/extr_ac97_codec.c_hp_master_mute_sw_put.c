
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct snd_ac97 {unsigned short* regs; } ;


 size_t AC97_MASTER ;
 unsigned short AC97_MUTE_MASK_MONO ;
 unsigned short AC97_MUTE_MASK_STEREO ;
 int AC97_PD_EAPD ;
 int AC97_POWERDOWN ;
 int bind_hp_volsw_put (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int ,int ) ;
 struct snd_ac97* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int hp_master_mute_sw_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 int err = bind_hp_volsw_put(kcontrol, ucontrol);
 if (err > 0) {
  struct snd_ac97 *ac97 = snd_kcontrol_chip(kcontrol);
  int shift = (kcontrol->private_value >> 8) & 0x0f;
  int rshift = (kcontrol->private_value >> 12) & 0x0f;
  unsigned short mask;
  if (shift != rshift)
   mask = AC97_MUTE_MASK_STEREO;
  else
   mask = AC97_MUTE_MASK_MONO;
  snd_ac97_update_bits(ac97, AC97_POWERDOWN, AC97_PD_EAPD,
         (ac97->regs[AC97_MASTER] & mask) == mask ?
         AC97_PD_EAPD : 0);
 }
 return err;
}
