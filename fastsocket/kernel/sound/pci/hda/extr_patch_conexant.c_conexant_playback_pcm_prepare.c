
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {int multiout; } ;


 int snd_hda_multi_out_analog_prepare (struct hda_codec*,int *,unsigned int,unsigned int,struct snd_pcm_substream*) ;

__attribute__((used)) static int conexant_playback_pcm_prepare(struct hda_pcm_stream *hinfo,
      struct hda_codec *codec,
      unsigned int stream_tag,
      unsigned int format,
      struct snd_pcm_substream *substream)
{
 struct conexant_spec *spec = codec->spec;
 return snd_hda_multi_out_analog_prepare(codec, &spec->multiout,
      stream_tag,
      format, substream);
}
