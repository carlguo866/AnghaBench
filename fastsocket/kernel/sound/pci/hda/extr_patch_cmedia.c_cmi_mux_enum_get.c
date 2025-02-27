
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;
struct hda_codec {struct cmi_spec* spec; } ;
struct cmi_spec {int * cur_mux; } ;


 unsigned int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int cmi_mux_enum_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct cmi_spec *spec = codec->spec;
 unsigned int adc_idx = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id);

 ucontrol->value.enumerated.item[0] = spec->cur_mux[adc_idx];
 return 0;
}
