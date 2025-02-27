
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gameport {int dummy; } ;
struct TYPE_2__ {unsigned long loops_per_jiffy; } ;


 unsigned int DELTA (unsigned int,unsigned int) ;
 int GAMEPORT_MODE_RAW ;
 int GET_TIME (unsigned int) ;
 unsigned int HZ ;
 TYPE_1__ cpu_data (int ) ;
 int gameport_close (struct gameport*) ;
 scalar_t__ gameport_open (struct gameport*,int *,int ) ;
 int gameport_read (struct gameport*) ;
 unsigned int jiffies ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int raw_smp_processor_id () ;
 int rdtscl (unsigned long) ;
 int udelay (unsigned int) ;

__attribute__((used)) static int gameport_measure_speed(struct gameport *gameport)
{
 unsigned int i, t;
 unsigned long tx, t1, t2, flags;

 if (gameport_open(gameport, ((void*)0), GAMEPORT_MODE_RAW))
  return 0;

 tx = 1 << 30;

 for(i = 0; i < 50; i++) {
  local_irq_save(flags);
  rdtscl(t1);
  for (t = 0; t < 50; t++) gameport_read(gameport);
  rdtscl(t2);
  local_irq_restore(flags);
  udelay(i * 10);
  if (t2 - t1 < tx) tx = t2 - t1;
 }

 gameport_close(gameport);
 return (cpu_data(raw_smp_processor_id()).loops_per_jiffy *
  (unsigned long)HZ / (1000 / 50)) / (tx < 1 ? 1 : tx);
}
