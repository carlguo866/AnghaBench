
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
struct auto_pin_cfg_item {scalar_t__ type; int pin; scalar_t__ is_headphone_mic; scalar_t__ is_headset_mic; } ;


 scalar_t__ AUTO_PIN_MIC ;
 int INPUT_PIN_ATTR_DOCK ;
 int get_defcfg_sequence (unsigned int) ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;
 int snd_hda_get_input_pin_attr (unsigned int) ;

__attribute__((used)) static bool can_be_headset_mic(struct hda_codec *codec,
          struct auto_pin_cfg_item *item,
          int seq_number)
{
 int attr;
 unsigned int def_conf;
 if (item->type != AUTO_PIN_MIC)
  return 0;

 if (item->is_headset_mic || item->is_headphone_mic)
  return 0;

 def_conf = snd_hda_codec_get_pincfg(codec, item->pin);
 attr = snd_hda_get_input_pin_attr(def_conf);
 if (attr <= INPUT_PIN_ATTR_DOCK)
  return 0;

 if (seq_number >= 0) {
  int seq = get_defcfg_sequence(def_conf);
  if (seq != seq_number)
   return 0;
 }

 return 1;
}
