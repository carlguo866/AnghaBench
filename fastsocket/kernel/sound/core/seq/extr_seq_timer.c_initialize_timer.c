
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; unsigned long resolution; unsigned long (* c_resolution ) (struct snd_timer*) ;} ;
struct snd_timer {TYPE_2__ hw; } ;
struct snd_seq_timer {unsigned long preferred_resolution; int ticks; int initialized; TYPE_1__* timeri; } ;
struct TYPE_3__ {struct snd_timer* timer; } ;


 unsigned long DEFAULT_FREQUENCY ;
 int EINVAL ;
 unsigned long MAX_FREQUENCY ;
 unsigned long MIN_FREQUENCY ;
 int SNDRV_TIMER_HW_SLAVE ;
 scalar_t__ snd_BUG_ON (int) ;
 unsigned long stub1 (struct snd_timer*) ;

__attribute__((used)) static int initialize_timer(struct snd_seq_timer *tmr)
{
 struct snd_timer *t;
 unsigned long freq;

 t = tmr->timeri->timer;
 if (snd_BUG_ON(!t))
  return -EINVAL;

 freq = tmr->preferred_resolution;
 if (!freq)
  freq = DEFAULT_FREQUENCY;
 else if (freq < MIN_FREQUENCY)
  freq = MIN_FREQUENCY;
 else if (freq > MAX_FREQUENCY)
  freq = MAX_FREQUENCY;

 tmr->ticks = 1;
 if (!(t->hw.flags & SNDRV_TIMER_HW_SLAVE)) {
  unsigned long r = t->hw.resolution;
  if (! r && t->hw.c_resolution)
   r = t->hw.c_resolution(t);
  if (r) {
   tmr->ticks = (unsigned int)(1000000000uL / (r * freq));
   if (! tmr->ticks)
    tmr->ticks = 1;
  }
 }
 tmr->initialized = 1;
 return 0;
}
