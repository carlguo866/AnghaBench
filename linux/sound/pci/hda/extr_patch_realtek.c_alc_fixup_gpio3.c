
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 int alc_fixup_gpio (struct hda_codec*,int,int) ;

__attribute__((used)) static void alc_fixup_gpio3(struct hda_codec *codec,
       const struct hda_fixup *fix, int action)
{
 alc_fixup_gpio(codec, action, 0x03);
}
