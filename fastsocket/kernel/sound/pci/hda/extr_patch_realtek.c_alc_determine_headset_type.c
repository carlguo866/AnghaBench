
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int vendor_id; struct alc_spec* spec; } ;
struct alc_spec {int current_headset_type; } ;


 int ALC_HEADSET_TYPE_CTIA ;
 int ALC_HEADSET_TYPE_OMTP ;
 int alc_read_coef_idx (struct hda_codec*,int) ;
 int alc_write_coef_idx (struct hda_codec*,int,int) ;
 int msleep (int) ;
 int snd_printdd (char*,char*) ;

__attribute__((used)) static void alc_determine_headset_type(struct hda_codec *codec)
{
 int val;
 bool is_ctia = 0;
 struct alc_spec *spec = codec->spec;

 switch (codec->vendor_id) {
 case 0x10ec0283:
  alc_write_coef_idx(codec, 0x45, 0xd029);
  msleep(300);
  val = alc_read_coef_idx(codec, 0x46);
  is_ctia = (val & 0x0070) == 0x0070;
  break;
 case 0x10ec0292:
  alc_write_coef_idx(codec, 0x6b, 0xd429);
  msleep(300);
  val = alc_read_coef_idx(codec, 0x6c);
  is_ctia = (val & 0x001c) == 0x001c;
  break;
 case 0x10ec0668:
  alc_write_coef_idx(codec, 0x11, 0x0001);
  alc_write_coef_idx(codec, 0xb7, 0x802b);
  alc_write_coef_idx(codec, 0x15, 0x0d60);
  alc_write_coef_idx(codec, 0xc3, 0x0c00);
  msleep(300);
  val = alc_read_coef_idx(codec, 0xbe);
  is_ctia = (val & 0x1c02) == 0x1c02;
  break;
 }

 snd_printdd("Headset jack detected iPhone-style headset: %s\n",
      is_ctia ? "yes" : "no");
 spec->current_headset_type = is_ctia ? ALC_HEADSET_TYPE_CTIA : ALC_HEADSET_TYPE_OMTP;
}
