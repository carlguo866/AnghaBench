
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_mixer_oss_slot {int dummy; } ;
struct snd_mixer_oss_file {struct snd_card* card; } ;
struct snd_kcontrol {scalar_t__ (* get ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;scalar_t__ (* info ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;} ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {int count; TYPE_2__ value; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; } ;
struct snd_card {int controls_rwsem; } ;


 int GFP_KERNEL ;
 unsigned int ID_UNKNOWN ;
 int down_read (int *) ;
 int kfree (struct snd_ctl_elem_value*) ;
 struct snd_ctl_elem_value* kzalloc (int,int ) ;
 struct snd_kcontrol* snd_ctl_find_numid (struct snd_card*,unsigned int) ;
 scalar_t__ stub1 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 scalar_t__ stub2 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 int up_read (int *) ;

__attribute__((used)) static void snd_mixer_oss_get_volume1_sw(struct snd_mixer_oss_file *fmixer,
      struct snd_mixer_oss_slot *pslot,
      unsigned int numid,
      int *left, int *right,
      int route)
{
 struct snd_ctl_elem_info *uinfo;
 struct snd_ctl_elem_value *uctl;
 struct snd_kcontrol *kctl;
 struct snd_card *card = fmixer->card;

 if (numid == ID_UNKNOWN)
  return;
 down_read(&card->controls_rwsem);
 if ((kctl = snd_ctl_find_numid(card, numid)) == ((void*)0)) {
  up_read(&card->controls_rwsem);
  return;
 }
 uinfo = kzalloc(sizeof(*uinfo), GFP_KERNEL);
 uctl = kzalloc(sizeof(*uctl), GFP_KERNEL);
 if (uinfo == ((void*)0) || uctl == ((void*)0))
  goto __unalloc;
 if (kctl->info(kctl, uinfo))
  goto __unalloc;
 if (kctl->get(kctl, uctl))
  goto __unalloc;
 if (!uctl->value.integer.value[0]) {
  *left = 0;
  if (uinfo->count == 1)
   *right = 0;
 }
 if (uinfo->count > 1 && !uctl->value.integer.value[route ? 3 : 1])
  *right = 0;
      __unalloc:
 up_read(&card->controls_rwsem);
       kfree(uctl);
 kfree(uinfo);
}
