
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int alc_parse_auto_config (struct hda_codec*,int const*,int const*) ;

__attribute__((used)) static int alc861_parse_auto_config(struct hda_codec *codec)
{
 static const hda_nid_t alc861_ignore[] = { 0x1d, 0 };
 static const hda_nid_t alc861_ssids[] = { 0x0e, 0x0f, 0x0b, 0 };
 return alc_parse_auto_config(codec, alc861_ignore, alc861_ssids);
}
