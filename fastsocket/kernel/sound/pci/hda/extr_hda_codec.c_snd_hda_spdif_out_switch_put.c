
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_spdif_out {scalar_t__ nid; unsigned short ctls; } ;
struct hda_codec {int spdif_mutex; int spdif_out; } ;
typedef scalar_t__ hda_nid_t ;


 unsigned short AC_DIG1_ENABLE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_spdif_ctls (struct hda_codec*,scalar_t__,unsigned short,int) ;
 struct hda_spdif_out* snd_array_elem (int *,int) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_hda_spdif_out_switch_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 int idx = kcontrol->private_value;
 struct hda_spdif_out *spdif;
 hda_nid_t nid;
 unsigned short val;
 int change;

 mutex_lock(&codec->spdif_mutex);
 spdif = snd_array_elem(&codec->spdif_out, idx);
 nid = spdif->nid;
 val = spdif->ctls & ~AC_DIG1_ENABLE;
 if (ucontrol->value.integer.value[0])
  val |= AC_DIG1_ENABLE;
 change = spdif->ctls != val;
 spdif->ctls = val;
 if (change && nid != (u16)-1)
  set_spdif_ctls(codec, nid, val & 0xff, -1);
 mutex_unlock(&codec->spdif_mutex);
 return change;
}
