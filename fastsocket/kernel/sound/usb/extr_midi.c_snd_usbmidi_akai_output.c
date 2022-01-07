
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct urb {int* transfer_buffer; int transfer_buffer_length; } ;
struct snd_usb_midi_out_endpoint {int max_transfer; TYPE_1__* ports; } ;
struct snd_rawmidi_substream {int dummy; } ;
struct TYPE_2__ {scalar_t__ active; struct snd_rawmidi_substream* substream; } ;


 int MAX_AKAI_SYSEX_LEN ;
 int memcpy (int*,int*,int) ;
 int snd_rawmidi_transmit_ack (struct snd_rawmidi_substream*,int) ;
 int snd_rawmidi_transmit_peek (struct snd_rawmidi_substream*,int*,int) ;

__attribute__((used)) static void snd_usbmidi_akai_output(struct snd_usb_midi_out_endpoint *ep,
        struct urb *urb)
{
 uint8_t *msg;
 int pos, end, count, buf_end;
 uint8_t tmp[MAX_AKAI_SYSEX_LEN];
 struct snd_rawmidi_substream *substream = ep->ports[0].substream;

 if (!ep->ports[0].active)
  return;

 msg = urb->transfer_buffer + urb->transfer_buffer_length;
 buf_end = ep->max_transfer - MAX_AKAI_SYSEX_LEN - 1;


 while (urb->transfer_buffer_length < buf_end) {
  count = snd_rawmidi_transmit_peek(substream,
        tmp, MAX_AKAI_SYSEX_LEN);
  if (!count) {
   ep->ports[0].active = 0;
   return;
  }

  for (pos = 0; pos < count && tmp[pos] != 0xF0; pos++)
   ;

  if (pos > 0) {
   snd_rawmidi_transmit_ack(substream, pos);
   continue;
  }


  for (end = 1; end < count && tmp[end] < 0xF0; end++)
   ;


  if (end < count && tmp[end] == 0xF0) {

   snd_rawmidi_transmit_ack(substream, end);
   continue;
  }

  if (end < count && tmp[end] == 0xF7) {

   count = end + 1;
   msg[0] = 0x10 | count;
   memcpy(&msg[1], tmp, count);
   snd_rawmidi_transmit_ack(substream, count);
   urb->transfer_buffer_length += count + 1;
   msg += count + 1;
   continue;
  }

  if (count < MAX_AKAI_SYSEX_LEN) {
   ep->ports[0].active = 0;
   return;
  }

  snd_rawmidi_transmit_ack(substream, count);
 }
}
