
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int dummy; } ;
struct snd_soc_codec {struct wm8350* control_data; } ;


 unsigned int wm8350_reg_read (struct wm8350*,unsigned int) ;

__attribute__((used)) static unsigned int wm8350_codec_read(struct snd_soc_codec *codec,
          unsigned int reg)
{
 struct wm8350 *wm8350 = codec->control_data;
 return wm8350_reg_read(wm8350, reg);
}
