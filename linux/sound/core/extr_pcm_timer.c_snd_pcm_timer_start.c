
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {int dummy; } ;
struct snd_pcm_substream {int timer_running; } ;


 struct snd_pcm_substream* snd_timer_chip (struct snd_timer*) ;

__attribute__((used)) static int snd_pcm_timer_start(struct snd_timer * timer)
{
 struct snd_pcm_substream *substream;

 substream = snd_timer_chip(timer);
 substream->timer_running = 1;
 return 0;
}
