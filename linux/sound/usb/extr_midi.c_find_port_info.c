
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_midi {scalar_t__ usb_id; } ;
struct port_info {scalar_t__ id; int port; } ;


 int ARRAY_SIZE (struct port_info*) ;
 struct port_info* snd_usbmidi_port_info ;

__attribute__((used)) static struct port_info *find_port_info(struct snd_usb_midi *umidi, int number)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(snd_usbmidi_port_info); ++i) {
  if (snd_usbmidi_port_info[i].id == umidi->usb_id &&
      snd_usbmidi_port_info[i].port == number)
   return &snd_usbmidi_port_info[i];
 }
 return ((void*)0);
}
