
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cx88_core {int dummy; } ;
struct cx88_audio_dev {struct cx88_core* core; } ;


 int AUD_BAL_CTL ;
 int AUD_VOL_CTL ;
 int cx_read (int ) ;
 struct cx88_audio_dev* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_cx88_volume_get(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *value)
{
 struct cx88_audio_dev *chip = snd_kcontrol_chip(kcontrol);
 struct cx88_core *core = chip->core;
 int vol = 0x3f - (cx_read(AUD_VOL_CTL) & 0x3f),
     bal = cx_read(AUD_BAL_CTL);

 value->value.integer.value[(bal & 0x40) ? 0 : 1] = vol;
 vol -= (bal & 0x3f);
 value->value.integer.value[(bal & 0x40) ? 1 : 0] = vol < 0 ? 0 : vol;

 return 0;
}
