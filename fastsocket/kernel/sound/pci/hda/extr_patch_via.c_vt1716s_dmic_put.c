
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct via_spec {int dmic_enabled; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {struct via_spec* spec; } ;


 int AC_VERB_SET_CONNECT_SEL ;
 int set_widgets_power_state (struct hda_codec*) ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int vt1716s_dmic_put(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct via_spec *spec = codec->spec;
 int index = *ucontrol->value.integer.value;

 snd_hda_codec_write(codec, 0x26, 0,
            AC_VERB_SET_CONNECT_SEL, index);
 spec->dmic_enabled = index;
 set_widgets_power_state(codec);
 return 1;
}
