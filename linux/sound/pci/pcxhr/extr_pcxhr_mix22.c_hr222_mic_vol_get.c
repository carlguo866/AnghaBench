
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcxhr {TYPE_3__* mgr; int mic_volume; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int * value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int mixer_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_pcxhr* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int hr222_mic_vol_get(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_pcxhr *chip = snd_kcontrol_chip(kcontrol);
 mutex_lock(&chip->mgr->mixer_mutex);
 ucontrol->value.integer.value[0] = chip->mic_volume;
 mutex_unlock(&chip->mgr->mixer_mutex);
 return 0;
}
