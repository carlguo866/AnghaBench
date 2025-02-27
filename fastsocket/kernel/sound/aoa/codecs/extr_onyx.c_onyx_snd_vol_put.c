
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
struct onyx {int mutex; } ;
typedef scalar_t__ s8 ;


 int EINVAL ;
 int ONYX_REG_DAC_ATTEN_LEFT ;
 int ONYX_REG_DAC_ATTEN_RIGHT ;
 scalar_t__ VOLUME_RANGE_SHIFT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int onyx_read_register (struct onyx*,int ,scalar_t__*) ;
 int onyx_write_register (struct onyx*,int ,scalar_t__) ;
 struct onyx* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int onyx_snd_vol_put(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct onyx *onyx = snd_kcontrol_chip(kcontrol);
 s8 l, r;

 if (ucontrol->value.integer.value[0] < -128 + VOLUME_RANGE_SHIFT ||
     ucontrol->value.integer.value[0] > -1 + VOLUME_RANGE_SHIFT)
  return -EINVAL;
 if (ucontrol->value.integer.value[1] < -128 + VOLUME_RANGE_SHIFT ||
     ucontrol->value.integer.value[1] > -1 + VOLUME_RANGE_SHIFT)
  return -EINVAL;

 mutex_lock(&onyx->mutex);
 onyx_read_register(onyx, ONYX_REG_DAC_ATTEN_LEFT, &l);
 onyx_read_register(onyx, ONYX_REG_DAC_ATTEN_RIGHT, &r);

 if (l + VOLUME_RANGE_SHIFT == ucontrol->value.integer.value[0] &&
     r + VOLUME_RANGE_SHIFT == ucontrol->value.integer.value[1]) {
  mutex_unlock(&onyx->mutex);
  return 0;
 }

 onyx_write_register(onyx, ONYX_REG_DAC_ATTEN_LEFT,
       ucontrol->value.integer.value[0]
        - VOLUME_RANGE_SHIFT);
 onyx_write_register(onyx, ONYX_REG_DAC_ATTEN_RIGHT,
       ucontrol->value.integer.value[1]
        - VOLUME_RANGE_SHIFT);
 mutex_unlock(&onyx->mutex);

 return 1;
}
