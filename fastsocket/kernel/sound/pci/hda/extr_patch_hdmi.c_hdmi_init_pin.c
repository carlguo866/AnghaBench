
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_AMP_GAIN_MUTE ;
 int AC_VERB_SET_PIN_WIDGET_CONTROL ;
 int AC_WCAP_OUT_AMP ;
 int AMP_OUT_UNMUTE ;
 int PIN_OUT ;
 int get_wcaps (struct hda_codec*,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;

__attribute__((used)) static void hdmi_init_pin(struct hda_codec *codec, hda_nid_t pin_nid)
{

 if (get_wcaps(codec, pin_nid) & AC_WCAP_OUT_AMP)
  snd_hda_codec_write(codec, pin_nid, 0,
    AC_VERB_SET_AMP_GAIN_MUTE, AMP_OUT_UNMUTE);



 snd_hda_codec_write(codec, pin_nid, 0,
       AC_VERB_SET_PIN_WIDGET_CONTROL, PIN_OUT);
}
