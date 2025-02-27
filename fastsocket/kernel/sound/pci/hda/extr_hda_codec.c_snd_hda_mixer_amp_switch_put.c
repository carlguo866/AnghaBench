
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {long* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int HDA_AMP_MUTE ;
 int get_amp_channels (struct snd_kcontrol*) ;
 int get_amp_direction (struct snd_kcontrol*) ;
 int get_amp_index (struct snd_kcontrol*) ;
 int get_amp_nid (struct snd_kcontrol*) ;
 int hda_call_check_power_status (struct hda_codec*,int ) ;
 int snd_hda_codec_amp_update (struct hda_codec*,int ,int,int,int,int ,int ) ;
 int snd_hda_power_down (struct hda_codec*) ;
 int snd_hda_power_up (struct hda_codec*) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

int snd_hda_mixer_amp_switch_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 hda_nid_t nid = get_amp_nid(kcontrol);
 int chs = get_amp_channels(kcontrol);
 int dir = get_amp_direction(kcontrol);
 int idx = get_amp_index(kcontrol);
 long *valp = ucontrol->value.integer.value;
 int change = 0;

 snd_hda_power_up(codec);
 if (chs & 1) {
  change = snd_hda_codec_amp_update(codec, nid, 0, dir, idx,
        HDA_AMP_MUTE,
        *valp ? 0 : HDA_AMP_MUTE);
  valp++;
 }
 if (chs & 2)
  change |= snd_hda_codec_amp_update(codec, nid, 1, dir, idx,
         HDA_AMP_MUTE,
         *valp ? 0 : HDA_AMP_MUTE);
 hda_call_check_power_status(codec, nid);
 snd_hda_power_down(codec);
 return change;
}
