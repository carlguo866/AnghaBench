
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int vendor_id; int subsystem_id; } ;



__attribute__((used)) static bool hp_bnb2011_with_dock(struct hda_codec *codec)
{
 if (codec->vendor_id != 0x111d7605 &&
     codec->vendor_id != 0x111d76d1)
  return 0;

 switch (codec->subsystem_id) {
 case 0x103c1618:
 case 0x103c1619:
 case 0x103c161a:
 case 0x103c161b:
 case 0x103c161c:
 case 0x103c161d:
 case 0x103c161e:
 case 0x103c161f:

 case 0x103c162a:
 case 0x103c162b:

 case 0x103c1630:
 case 0x103c1631:

 case 0x103c1633:
 case 0x103c1634:
 case 0x103c1635:

 case 0x103c3587:
 case 0x103c3588:
 case 0x103c3589:
 case 0x103c358a:

 case 0x103c3667:
 case 0x103c3668:
 case 0x103c3669:

  return 1;
 }
 return 0;
}
