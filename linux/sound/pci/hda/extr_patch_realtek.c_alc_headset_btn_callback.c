
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_jack_callback {int unsol_res; TYPE_1__* jack; } ;
struct hda_codec {int dummy; } ;
struct TYPE_2__ {int button_state; } ;


 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;

__attribute__((used)) static void alc_headset_btn_callback(struct hda_codec *codec,
         struct hda_jack_callback *jack)
{
 int report = 0;

 if (jack->unsol_res & (7 << 13))
  report |= SND_JACK_BTN_0;

 if (jack->unsol_res & (1 << 16 | 3 << 8))
  report |= SND_JACK_BTN_1;


 if (jack->unsol_res & (7 << 23))
  report |= SND_JACK_BTN_2;


 if (jack->unsol_res & (7 << 10))
  report |= SND_JACK_BTN_3;

 jack->jack->button_state = report;
}
