
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_usb_stream {TYPE_4__* substream; TYPE_3__* pcm; TYPE_2__* chip; } ;
struct snd_info_entry {struct snd_usb_stream* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_9__ {scalar_t__ num_formats; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {TYPE_1__* card; } ;
struct TYPE_6__ {int longname; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int proc_dump_substream_formats (TYPE_4__*,struct snd_info_buffer*) ;
 int proc_dump_substream_status (TYPE_4__*,struct snd_info_buffer*) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void proc_pcm_format_read(struct snd_info_entry *entry, struct snd_info_buffer *buffer)
{
 struct snd_usb_stream *stream = entry->private_data;

 snd_iprintf(buffer, "%s : %s\n", stream->chip->card->longname, stream->pcm->name);

 if (stream->substream[SNDRV_PCM_STREAM_PLAYBACK].num_formats) {
  snd_iprintf(buffer, "\nPlayback:\n");
  proc_dump_substream_status(&stream->substream[SNDRV_PCM_STREAM_PLAYBACK], buffer);
  proc_dump_substream_formats(&stream->substream[SNDRV_PCM_STREAM_PLAYBACK], buffer);
 }
 if (stream->substream[SNDRV_PCM_STREAM_CAPTURE].num_formats) {
  snd_iprintf(buffer, "\nCapture:\n");
  proc_dump_substream_status(&stream->substream[SNDRV_PCM_STREAM_CAPTURE], buffer);
  proc_dump_substream_formats(&stream->substream[SNDRV_PCM_STREAM_CAPTURE], buffer);
 }
}
