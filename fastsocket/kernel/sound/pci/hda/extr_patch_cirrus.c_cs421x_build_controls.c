
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_codec {struct cs_spec* spec; } ;
struct TYPE_3__ {scalar_t__ speaker_outs; } ;
struct TYPE_4__ {TYPE_1__ autocfg; } ;
struct cs_spec {scalar_t__ vendor_nid; TYPE_2__ gen; } ;


 scalar_t__ CS4210_VENDOR_NID ;
 int cs421x_speaker_boost_ctl ;
 int snd_ctl_new1 (int *,struct hda_codec*) ;
 int snd_hda_ctl_add (struct hda_codec*,int ,int ) ;
 int snd_hda_gen_build_controls (struct hda_codec*) ;

__attribute__((used)) static int cs421x_build_controls(struct hda_codec *codec)
{
 struct cs_spec *spec = codec->spec;
 int err;

 err = snd_hda_gen_build_controls(codec);
 if (err < 0)
  return err;

 if (spec->gen.autocfg.speaker_outs &&
     spec->vendor_nid == CS4210_VENDOR_NID) {
  err = snd_hda_ctl_add(codec, 0,
   snd_ctl_new1(&cs421x_speaker_boost_ctl, codec));
  if (err < 0)
   return err;
 }
 return 0;
}
