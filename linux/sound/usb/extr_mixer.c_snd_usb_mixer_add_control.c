
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_mixer_interface {struct usb_mixer_elem_list** id_elems; TYPE_1__* chip; } ;
struct usb_mixer_elem_list {size_t id; struct usb_mixer_elem_list* next_id_elem; struct snd_kcontrol* kctl; struct usb_mixer_interface* mixer; } ;
struct TYPE_4__ {int index; } ;
struct snd_kcontrol {TYPE_2__ id; } ;
struct TYPE_3__ {int card; } ;


 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 scalar_t__ snd_ctl_find_id (int ,TYPE_2__*) ;
 int usb_audio_dbg (TYPE_1__*,char*,int) ;

int snd_usb_mixer_add_control(struct usb_mixer_elem_list *list,
         struct snd_kcontrol *kctl)
{
 struct usb_mixer_interface *mixer = list->mixer;
 int err;

 while (snd_ctl_find_id(mixer->chip->card, &kctl->id))
  kctl->id.index++;
 err = snd_ctl_add(mixer->chip->card, kctl);
 if (err < 0) {
  usb_audio_dbg(mixer->chip, "cannot add control (err = %d)\n",
         err);
  return err;
 }
 list->kctl = kctl;
 list->next_id_elem = mixer->id_elems[list->id];
 mixer->id_elems[list->id] = list;
 return 0;
}
