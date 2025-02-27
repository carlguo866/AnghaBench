
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_ad1816a {int * playback_substream; } ;


 int AD1816A_MODE_PLAYBACK ;
 int snd_ad1816a_close (struct snd_ad1816a*,int ) ;
 struct snd_ad1816a* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ad1816a_playback_close(struct snd_pcm_substream *substream)
{
 struct snd_ad1816a *chip = snd_pcm_substream_chip(substream);

 chip->playback_substream = ((void*)0);
 snd_ad1816a_close(chip, AD1816A_MODE_PLAYBACK);
 return 0;
}
