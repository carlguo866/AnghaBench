
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdsp {int dummy; } ;


 int hdsp_rpm_bypass (struct hdsp*) ;
 struct hdsp* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_hdsp_get_rpm_bypass(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct hdsp *hdsp = snd_kcontrol_chip(kcontrol);

 ucontrol->value.integer.value[0] = hdsp_rpm_bypass(hdsp);
 return 0;
}
