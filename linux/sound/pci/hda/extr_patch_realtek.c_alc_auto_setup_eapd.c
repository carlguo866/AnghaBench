
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int set_eapd (struct hda_codec*,int,int) ;

__attribute__((used)) static void alc_auto_setup_eapd(struct hda_codec *codec, bool on)
{

 static hda_nid_t pins[] = {
  0x0f, 0x10, 0x14, 0x15, 0x17, 0
 };
 hda_nid_t *p;
 for (p = pins; *p; p++)
  set_eapd(codec, *p, on);
}
