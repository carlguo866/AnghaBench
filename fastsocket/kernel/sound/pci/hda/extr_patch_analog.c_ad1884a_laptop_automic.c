
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int AC_VERB_SET_CONNECT_SEL ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,unsigned int) ;
 scalar_t__ snd_hda_jack_detect (struct hda_codec*,int) ;

__attribute__((used)) static void ad1884a_laptop_automic(struct hda_codec *codec)
{
 unsigned int idx;

 if (snd_hda_jack_detect(codec, 0x14))
  idx = 0;
 else if (snd_hda_jack_detect(codec, 0x1c))
  idx = 4;
 else
  idx = 1;
 snd_hda_codec_write(codec, 0x0c, 0, AC_VERB_SET_CONNECT_SEL, idx);
}
