
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CLOCK_EVT_NOTIFY_BROADCAST_OFF ;
 unsigned long CLOCK_EVT_NOTIFY_BROADCAST_ON ;
 int clockevents_notify (unsigned long,int*) ;
 int smp_processor_id () ;

__attribute__((used)) static void __setup_broadcast_timer(void *arg)
{
 unsigned long reason = (unsigned long)arg;
 int cpu = smp_processor_id();

 reason = reason ?
  CLOCK_EVT_NOTIFY_BROADCAST_ON : CLOCK_EVT_NOTIFY_BROADCAST_OFF;

 clockevents_notify(reason, &cpu);
}
