
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct snd_pcm_substream {scalar_t__ stream; TYPE_1__* runtime; } ;
struct hda_pcm_stream {int nid; } ;
struct hda_codec {int dummy; } ;
struct TYPE_2__ {int rate; } ;


 int GET_REG (struct hda_codec*,int ) ;
 int SET_REG (struct hda_codec*,int ,int) ;
 int SI3054_LINE_LEVEL ;
 int SI3054_LINE_RATE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_hda_codec_setup_stream (struct hda_codec*,int ,unsigned int,int ,unsigned int) ;

__attribute__((used)) static int si3054_pcm_prepare(struct hda_pcm_stream *hinfo,
         struct hda_codec *codec,
         unsigned int stream_tag,
         unsigned int format,
         struct snd_pcm_substream *substream)
{
 u16 val;

 SET_REG(codec, SI3054_LINE_RATE, substream->runtime->rate);
 val = GET_REG(codec, SI3054_LINE_LEVEL);
 val &= 0xff << (8 * (substream->stream != SNDRV_PCM_STREAM_PLAYBACK));
 val |= ((stream_tag & 0xf) << 4) << (8 * (substream->stream == SNDRV_PCM_STREAM_PLAYBACK));
 SET_REG(codec, SI3054_LINE_LEVEL, val);

 snd_hda_codec_setup_stream(codec, hinfo->nid,
       stream_tag, 0, format);
 return 0;
}
