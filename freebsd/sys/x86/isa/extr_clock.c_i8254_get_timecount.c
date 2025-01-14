
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
struct timecounter {int tc_priv; } ;
struct attimer_softc {scalar_t__ period; } ;
typedef int register_t ;
typedef int device_t ;


 int PSL_I ;
 int TIMER_CNTR0 ;
 int TIMER_LATCH ;
 int TIMER_MODE ;
 int TIMER_SEL0 ;
 scalar_t__ clkintr_pending ;
 int clock_lock ;
 struct attimer_softc* device_get_softc (int ) ;
 int getit () ;
 int i8254_intsrc ;
 int i8254_lastcount ;
 int i8254_max_count ;
 scalar_t__ i8254_offset ;
 scalar_t__ i8254_pending (int ) ;
 int i8254_ticked ;
 int inb (int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int outb (int ,int) ;
 int read_eflags () ;
 int read_rflags () ;

__attribute__((used)) static unsigned
i8254_get_timecount(struct timecounter *tc)
{
 device_t dev = (device_t)tc->tc_priv;
 struct attimer_softc *sc = device_get_softc(dev);
 register_t flags;
 uint16_t count;
 u_int high, low;

 if (sc->period == 0)
  return (i8254_max_count - getit());


 flags = read_rflags();



 mtx_lock_spin(&clock_lock);


 outb(TIMER_MODE, TIMER_SEL0 | TIMER_LATCH);

 low = inb(TIMER_CNTR0);
 high = inb(TIMER_CNTR0);
 count = i8254_max_count - ((high << 8) | low);
 if (count < i8254_lastcount ||
     (!i8254_ticked && (clkintr_pending ||
     ((count < 20 || (!(flags & PSL_I) &&
     count < i8254_max_count / 2u)) &&
     i8254_pending != ((void*)0) && i8254_pending(i8254_intsrc))))) {
  i8254_ticked = 1;
  i8254_offset += i8254_max_count;
 }
 i8254_lastcount = count;
 count += i8254_offset;
 mtx_unlock_spin(&clock_lock);
 return (count);
}
