
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tscm {int tx_stream; } ;
struct snd_pcm_substream {struct snd_tscm* private_data; } ;
typedef int snd_pcm_uframes_t ;


 int amdtp_stream_pcm_pointer (int *) ;

__attribute__((used)) static snd_pcm_uframes_t pcm_capture_pointer(struct snd_pcm_substream *sbstrm)
{
 struct snd_tscm *tscm = sbstrm->private_data;

 return amdtp_stream_pcm_pointer(&tscm->tx_stream);
}
