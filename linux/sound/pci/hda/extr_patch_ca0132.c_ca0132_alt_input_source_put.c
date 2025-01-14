
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int in_enum_val; } ;


 unsigned int IN_SRC_NUM_OF_INPUTS ;
 int ca0132_alt_select_in (struct hda_codec*) ;
 int codec_dbg (struct hda_codec*,char*,int,int ) ;
 int * in_src_str ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ca0132_alt_input_source_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct ca0132_spec *spec = codec->spec;
 int sel = ucontrol->value.enumerated.item[0];
 unsigned int items = IN_SRC_NUM_OF_INPUTS;

 if (sel >= items)
  return 0;

 codec_dbg(codec, "ca0132_alt_input_select: sel=%d, preset=%s\n",
      sel, in_src_str[sel]);

 spec->in_enum_val = sel;

 ca0132_alt_select_in(codec);

 return 1;
}
