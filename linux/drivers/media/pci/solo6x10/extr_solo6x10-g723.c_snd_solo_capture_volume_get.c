
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct solo_dev {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {int * value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct TYPE_4__ {scalar_t__ numid; } ;
struct snd_ctl_elem_value {TYPE_3__ value; TYPE_1__ id; } ;


 struct solo_dev* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int tw28_get_audio_gain (struct solo_dev*,scalar_t__) ;

__attribute__((used)) static int snd_solo_capture_volume_get(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value *value)
{
 struct solo_dev *solo_dev = snd_kcontrol_chip(kcontrol);
 u8 ch = value->id.numid - 1;

 value->value.integer.value[0] = tw28_get_audio_gain(solo_dev, ch);

 return 0;
}
