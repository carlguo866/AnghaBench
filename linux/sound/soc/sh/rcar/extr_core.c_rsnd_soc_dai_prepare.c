
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int dummy; } ;


 int prepare ;
 int rsnd_dai_call (int ,struct rsnd_dai_stream*,struct rsnd_priv*) ;
 struct rsnd_priv* rsnd_dai_to_priv (struct snd_soc_dai*) ;
 struct rsnd_dai* rsnd_dai_to_rdai (struct snd_soc_dai*) ;
 struct rsnd_dai_stream* rsnd_rdai_to_io (struct rsnd_dai*,struct snd_pcm_substream*) ;

__attribute__((used)) static int rsnd_soc_dai_prepare(struct snd_pcm_substream *substream,
    struct snd_soc_dai *dai)
{
 struct rsnd_priv *priv = rsnd_dai_to_priv(dai);
 struct rsnd_dai *rdai = rsnd_dai_to_rdai(dai);
 struct rsnd_dai_stream *io = rsnd_rdai_to_io(rdai, substream);

 return rsnd_dai_call(prepare, io, priv);
}
