
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cx88_core {int dummy; } ;
struct cx88_audio_dev {struct cx88_core* core; } ;


 int V4L2_CID_AUDIO_LOUDNESS ;
 struct cx88_audio_dev* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int wm8775_s_ctrl (struct cx88_core*,int ,int) ;

__attribute__((used)) static int snd_cx88_alc_put(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *value)
{
 struct cx88_audio_dev *chip = snd_kcontrol_chip(kcontrol);
 struct cx88_core *core = chip->core;

 wm8775_s_ctrl(core, V4L2_CID_AUDIO_LOUDNESS,
        value->value.integer.value[0] != 0);
 return 0;
}
