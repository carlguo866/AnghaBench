
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {scalar_t__ mixer_nid; } ;
struct alc_spec {TYPE_1__ gen; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;

__attribute__((used)) static void alc_fixup_disable_aamix(struct hda_codec *codec,
        const struct hda_fixup *fix, int action)
{
 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  struct alc_spec *spec = codec->spec;

  spec->gen.mixer_nid = 0;
 }
}
