
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;


 int hz ;
 int lost_polls ;
 int microuptime (struct timeval*) ;
 int netisr_poll_scheduled ;
 int netisr_pollmore_scheduled ;
 int netisr_sched_poll () ;
 int pending_polls ;
 int phase ;
 scalar_t__ poll_handlers ;
 scalar_t__ poll_shutting_down ;
 int short_ticks ;
 int stalled ;
 int suspect ;

void
hardclock_device_poll(void)
{
 static struct timeval prev_t, t;
 int delta;

 if (poll_handlers == 0 || poll_shutting_down)
  return;

 microuptime(&t);
 delta = (t.tv_usec - prev_t.tv_usec) +
  (t.tv_sec - prev_t.tv_sec)*1000000;
 if (delta * hz < 500000)
  short_ticks++;
 else
  prev_t = t;

 if (pending_polls > 100) {




  stalled++;
  pending_polls = 0;
  phase = 0;
 }

 if (phase <= 2) {
  if (phase != 0)
   suspect++;
  phase = 1;
  netisr_poll_scheduled = 1;
  netisr_pollmore_scheduled = 1;
  netisr_sched_poll();
  phase = 2;
 }
 if (pending_polls++ > 0)
  lost_polls++;
}
