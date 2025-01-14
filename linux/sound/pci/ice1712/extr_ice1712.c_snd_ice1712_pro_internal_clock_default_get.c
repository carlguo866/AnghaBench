
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned int const PRO_RATE_DEFAULT ;

__attribute__((used)) static int snd_ice1712_pro_internal_clock_default_get(struct snd_kcontrol *kcontrol,
            struct snd_ctl_elem_value *ucontrol)
{
 int val;
 static const unsigned int xrate[13] = {
  8000, 9600, 11025, 12000, 16000, 22050, 24000,
  32000, 44100, 48000, 64000, 88200, 96000
 };

 for (val = 0; val < 13; val++) {
  if (xrate[val] == PRO_RATE_DEFAULT)
   break;
 }

 ucontrol->value.enumerated.item[0] = val;
 return 0;
}
