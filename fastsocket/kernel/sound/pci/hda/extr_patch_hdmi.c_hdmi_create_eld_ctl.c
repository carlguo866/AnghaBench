
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int device; } ;
struct snd_kcontrol {int private_value; TYPE_1__ id; } ;
struct hdmi_spec {int dummy; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
struct TYPE_4__ {struct snd_kcontrol* eld_ctl; int pin_nid; } ;


 int ENOMEM ;
 int eld_bytes_ctl ;
 TYPE_2__* get_pin (struct hdmi_spec*,int) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct hda_codec*) ;
 int snd_hda_ctl_add (struct hda_codec*,int ,struct snd_kcontrol*) ;

__attribute__((used)) static int hdmi_create_eld_ctl(struct hda_codec *codec, int pin_idx,
   int device)
{
 struct snd_kcontrol *kctl;
 struct hdmi_spec *spec = codec->spec;
 int err;

 kctl = snd_ctl_new1(&eld_bytes_ctl, codec);
 if (!kctl)
  return -ENOMEM;
 kctl->private_value = pin_idx;
 kctl->id.device = device;

 err = snd_hda_ctl_add(codec, get_pin(spec, pin_idx)->pin_nid, kctl);
 if (err < 0)
  return err;

 get_pin(spec, pin_idx)->eld_ctl = kctl;
 return 0;
}
