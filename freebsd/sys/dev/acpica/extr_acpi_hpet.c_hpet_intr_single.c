
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_2__ {int et_arg; int (* et_event_cb ) (TYPE_1__*,int ) ;scalar_t__ et_active; } ;
struct hpet_timer {scalar_t__ mode; scalar_t__ pcpu_cpu; int pcpu_misrouted; int num; int caps; int div; size_t pcpu_master; TYPE_1__ et; void* next; struct hpet_softc* sc; } ;
struct hpet_softc {int freq; struct hpet_timer* t; int mem_res; } ;
typedef scalar_t__ int32_t ;


 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int HPET_MAIN_COUNTER ;
 int HPET_TCAP_PER_INT ;
 int HPET_TIMER_COMPARATOR (int) ;
 scalar_t__ TIMER_ONESHOT ;
 scalar_t__ TIMER_PERIODIC ;
 scalar_t__ TIMER_STOPPED ;
 void* bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,void*) ;
 scalar_t__ curcpu ;
 int printf (char*,int,scalar_t__,scalar_t__) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int
hpet_intr_single(void *arg)
{
 struct hpet_timer *t = (struct hpet_timer *)arg;
 struct hpet_timer *mt;
 struct hpet_softc *sc = t->sc;
 uint32_t now;

 if (t->mode == TIMER_STOPPED)
  return (FILTER_STRAY);

 if (t->pcpu_cpu >= 0 && t->pcpu_cpu != curcpu) {
  if ((++t->pcpu_misrouted) % 32 == 0) {
   printf("HPET interrupt routed to the wrong CPU"
       " (timer %d CPU %d -> %d)!\n",
       t->num, t->pcpu_cpu, curcpu);
  }





  if ((t->mode == TIMER_PERIODIC &&
      (t->caps & HPET_TCAP_PER_INT) == 0) ||
      t->mode == TIMER_ONESHOT) {
   t->next = bus_read_4(sc->mem_res, HPET_MAIN_COUNTER) +
       sc->freq / 8;
   bus_write_4(sc->mem_res, HPET_TIMER_COMPARATOR(t->num),
       t->next);
  }
  return (FILTER_HANDLED);
 }
 if (t->mode == TIMER_PERIODIC &&
     (t->caps & HPET_TCAP_PER_INT) == 0) {
  t->next += t->div;
  now = bus_read_4(sc->mem_res, HPET_MAIN_COUNTER);
  if ((int32_t)((now + t->div / 2) - t->next) > 0)
   t->next = now + t->div / 2;
  bus_write_4(sc->mem_res,
      HPET_TIMER_COMPARATOR(t->num), t->next);
 } else if (t->mode == TIMER_ONESHOT)
  t->mode = TIMER_STOPPED;
 mt = (t->pcpu_master < 0) ? t : &sc->t[t->pcpu_master];
 if (mt->et.et_active)
  mt->et.et_event_cb(&mt->et, mt->et.et_arg);
 return (FILTER_HANDLED);
}
