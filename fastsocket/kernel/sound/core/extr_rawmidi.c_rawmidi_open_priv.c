
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int dummy; } ;
struct snd_rawmidi_file {struct snd_rawmidi_substream* output; struct snd_rawmidi_substream* input; struct snd_rawmidi* rmidi; } ;
struct snd_rawmidi {int dummy; } ;


 int SNDRV_RAWMIDI_LFLG_INPUT ;
 int SNDRV_RAWMIDI_LFLG_OUTPUT ;
 int SNDRV_RAWMIDI_STREAM_INPUT ;
 int SNDRV_RAWMIDI_STREAM_OUTPUT ;
 int assign_substream (struct snd_rawmidi*,int,int ,int,struct snd_rawmidi_substream**) ;
 int close_substream (struct snd_rawmidi*,struct snd_rawmidi_substream*,int ) ;
 int open_substream (struct snd_rawmidi*,struct snd_rawmidi_substream*,int) ;

__attribute__((used)) static int rawmidi_open_priv(struct snd_rawmidi *rmidi, int subdevice, int mode,
        struct snd_rawmidi_file *rfile)
{
 struct snd_rawmidi_substream *sinput = ((void*)0), *soutput = ((void*)0);
 int err;

 rfile->input = rfile->output = ((void*)0);
 if (mode & SNDRV_RAWMIDI_LFLG_INPUT) {
  err = assign_substream(rmidi, subdevice,
           SNDRV_RAWMIDI_STREAM_INPUT,
           mode, &sinput);
  if (err < 0)
   return err;
 }
 if (mode & SNDRV_RAWMIDI_LFLG_OUTPUT) {
  err = assign_substream(rmidi, subdevice,
           SNDRV_RAWMIDI_STREAM_OUTPUT,
           mode, &soutput);
  if (err < 0)
   return err;
 }

 if (sinput) {
  err = open_substream(rmidi, sinput, mode);
  if (err < 0)
   return err;
 }
 if (soutput) {
  err = open_substream(rmidi, soutput, mode);
  if (err < 0) {
   if (sinput)
    close_substream(rmidi, sinput, 0);
   return err;
  }
 }

 rfile->rmidi = rmidi;
 rfile->input = sinput;
 rfile->output = soutput;
 return 0;
}
