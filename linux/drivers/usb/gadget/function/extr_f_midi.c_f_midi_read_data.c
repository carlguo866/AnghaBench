
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_ep {struct f_midi* driver_data; } ;
struct snd_rawmidi_substream {int dummy; } ;
struct f_midi {int out_triggered; struct snd_rawmidi_substream** out_substream; } ;


 int snd_rawmidi_receive (struct snd_rawmidi_substream*,int *,int) ;
 int test_bit (int,int *) ;

__attribute__((used)) static void f_midi_read_data(struct usb_ep *ep, int cable,
        uint8_t *data, int length)
{
 struct f_midi *midi = ep->driver_data;
 struct snd_rawmidi_substream *substream = midi->out_substream[cable];

 if (!substream)

  return;

 if (!test_bit(cable, &midi->out_triggered))
  return;

 snd_rawmidi_receive(substream, data, length);
}
