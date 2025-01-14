
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_line6_pcm {int impulse_volume; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int LINE6_STREAM_IMPULSE ;
 int line6_pcm_acquire (struct snd_line6_pcm*,int ,int) ;
 int line6_pcm_release (struct snd_line6_pcm*,int ) ;
 struct snd_line6_pcm* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_line6_impulse_volume_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_line6_pcm *line6pcm = snd_kcontrol_chip(kcontrol);
 int value = ucontrol->value.integer.value[0];
 int err;

 if (line6pcm->impulse_volume == value)
  return 0;

 line6pcm->impulse_volume = value;
 if (value > 0) {
  err = line6_pcm_acquire(line6pcm, LINE6_STREAM_IMPULSE, 1);
  if (err < 0) {
   line6pcm->impulse_volume = 0;
   return err;
  }
 } else {
  line6_pcm_release(line6pcm, LINE6_STREAM_IMPULSE);
 }
 return 1;
}
