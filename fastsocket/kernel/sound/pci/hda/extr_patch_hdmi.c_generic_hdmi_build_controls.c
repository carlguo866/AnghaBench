
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_spec_per_pin {int * mux_nids; int pin_nid; } ;
struct hdmi_spec {int num_pins; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
struct TYPE_2__ {int device; } ;


 int HDA_PCM_TYPE_HDMI ;
 int generic_hdmi_build_jack (struct hda_codec*,int) ;
 TYPE_1__* get_pcm_rec (struct hdmi_spec*,int) ;
 struct hdmi_spec_per_pin* get_pin (struct hdmi_spec*,int) ;
 int hdmi_create_eld_ctl (struct hda_codec*,int,int ) ;
 int hdmi_present_sense (struct hdmi_spec_per_pin*,int ) ;
 int snd_hda_create_dig_out_ctls (struct hda_codec*,int ,int ,int ) ;
 int snd_hda_spdif_ctls_unassign (struct hda_codec*,int) ;

__attribute__((used)) static int generic_hdmi_build_controls(struct hda_codec *codec)
{
 struct hdmi_spec *spec = codec->spec;
 int err;
 int pin_idx;

 for (pin_idx = 0; pin_idx < spec->num_pins; pin_idx++) {
  struct hdmi_spec_per_pin *per_pin = get_pin(spec, pin_idx);

  err = generic_hdmi_build_jack(codec, pin_idx);
  if (err < 0)
   return err;

  err = snd_hda_create_dig_out_ctls(codec,
        per_pin->pin_nid,
        per_pin->mux_nids[0],
        HDA_PCM_TYPE_HDMI);
  if (err < 0)
   return err;
  snd_hda_spdif_ctls_unassign(codec, pin_idx);


  err = hdmi_create_eld_ctl(codec, pin_idx,
       get_pcm_rec(spec, pin_idx)->device);

  if (err < 0)
   return err;

  hdmi_present_sense(per_pin, 0);
 }

 return 0;
}
