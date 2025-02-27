
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_usb_substream {scalar_t__ direction; TYPE_2__* stream; } ;
struct audioformat {int rate_min; } ;
struct TYPE_4__ {int chip; TYPE_1__* substream; } ;
struct TYPE_3__ {int interface; } ;


 unsigned char EMU_QUIRK_SR_176400HZ ;
 unsigned char EMU_QUIRK_SR_192000HZ ;
 unsigned char EMU_QUIRK_SR_44100HZ ;
 unsigned char EMU_QUIRK_SR_48000HZ ;
 unsigned char EMU_QUIRK_SR_88200HZ ;
 unsigned char EMU_QUIRK_SR_96000HZ ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_emuusb_set_samplerate (int ,unsigned char) ;

__attribute__((used)) static void set_format_emu_quirk(struct snd_usb_substream *subs,
     struct audioformat *fmt)
{
 unsigned char emu_samplerate_id = 0;





 if (subs->direction == SNDRV_PCM_STREAM_PLAYBACK) {
  if (subs->stream->substream[SNDRV_PCM_STREAM_CAPTURE].interface != -1)
   return;
 }

 switch (fmt->rate_min) {
 case 48000:
  emu_samplerate_id = EMU_QUIRK_SR_48000HZ;
  break;
 case 88200:
  emu_samplerate_id = EMU_QUIRK_SR_88200HZ;
  break;
 case 96000:
  emu_samplerate_id = EMU_QUIRK_SR_96000HZ;
  break;
 case 176400:
  emu_samplerate_id = EMU_QUIRK_SR_176400HZ;
  break;
 case 192000:
  emu_samplerate_id = EMU_QUIRK_SR_192000HZ;
  break;
 default:
  emu_samplerate_id = EMU_QUIRK_SR_44100HZ;
  break;
 }
 snd_emuusb_set_samplerate(subs->stream->chip, emu_samplerate_id);
}
