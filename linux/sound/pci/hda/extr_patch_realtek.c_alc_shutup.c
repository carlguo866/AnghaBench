
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int (* shutup ) (struct hda_codec*) ;} ;


 int alc_shutup_pins (struct hda_codec*) ;
 int snd_hda_get_bool_hint (struct hda_codec*,char*) ;
 int stub1 (struct hda_codec*) ;

__attribute__((used)) static inline void alc_shutup(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;

 if (!snd_hda_get_bool_hint(codec, "shutup"))
  return;

 if (spec && spec->shutup)
  spec->shutup(codec);
 else
  alc_shutup_pins(codec);
}
