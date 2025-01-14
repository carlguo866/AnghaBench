
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct special_params {int clk_lock; int dig_in_fmt; int clk_src; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_bebob {int mutex; struct special_params* maudio_special_quirk; } ;


 unsigned int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int avc_maudio_set_special_clk (struct snd_bebob*,int ,int ,unsigned int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_bebob* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int special_dig_out_iface_labels ;
 int special_stream_formation_set (struct snd_bebob*) ;

__attribute__((used)) static int special_dig_out_iface_ctl_set(struct snd_kcontrol *kctl,
      struct snd_ctl_elem_value *uval)
{
 struct snd_bebob *bebob = snd_kcontrol_chip(kctl);
 struct special_params *params = bebob->maudio_special_quirk;
 unsigned int id;
 int err;

 id = uval->value.enumerated.item[0];
 if (id >= ARRAY_SIZE(special_dig_out_iface_labels))
  return -EINVAL;

 mutex_lock(&bebob->mutex);

 err = avc_maudio_set_special_clk(bebob,
      params->clk_src,
      params->dig_in_fmt,
      id, params->clk_lock);
 if (err >= 0) {
  special_stream_formation_set(bebob);
  err = 1;
 }

 mutex_unlock(&bebob->mutex);
 return err;
}
