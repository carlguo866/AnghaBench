
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct hda_spdif_out {scalar_t__ nid; } ;
struct TYPE_2__ {int used; } ;
struct hda_codec {int spdif_mutex; TYPE_1__ spdif_out; } ;


 scalar_t__ WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hda_spdif_out* snd_array_elem (TYPE_1__*,int) ;

void snd_hda_spdif_ctls_unassign(struct hda_codec *codec, int idx)
{
 struct hda_spdif_out *spdif;

 if (WARN_ON(codec->spdif_out.used <= idx))
  return;
 mutex_lock(&codec->spdif_mutex);
 spdif = snd_array_elem(&codec->spdif_out, idx);
 spdif->nid = (u16)-1;
 mutex_unlock(&codec->spdif_mutex);
}
