
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int alc_read_coef_idx (struct hda_codec*,int) ;
 int alc_write_coef_idx (struct hda_codec*,int,int) ;

__attribute__((used)) static void alc269vb_toggle_power_output(struct hda_codec *codec, int power_up)
{
 int val = alc_read_coef_idx(codec, 0x04);
 if (power_up)
  val |= 1 << 11;
 else
  val &= ~(1 << 11);
 alc_write_coef_idx(codec, 0x04, val);
}
