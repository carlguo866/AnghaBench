
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int id; } ;
struct hda_codec {struct ad198x_spec* spec; } ;
struct ad198x_spec {int * cur_mux; int * capsrc_nids; int input_mux; } ;


 unsigned int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 int snd_hda_input_mux_put (struct hda_codec*,int ,struct snd_ctl_elem_value*,int ,int *) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ad198x_mux_enum_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct ad198x_spec *spec = codec->spec;
 unsigned int adc_idx = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id);

 return snd_hda_input_mux_put(codec, spec->input_mux, ucontrol,
         spec->capsrc_nids[adc_idx],
         &spec->cur_mux[adc_idx]);
}
