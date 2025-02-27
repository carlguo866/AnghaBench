
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soundscape {int lock; int io_base; } ;


 int host_read_unsafe (int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned int) ;
 int msleep (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int obp_startup_ack(struct soundscape *s, unsigned timeout)
{
 unsigned long end_time = jiffies + msecs_to_jiffies(timeout);

 do {
  unsigned long flags;
  int x;

  spin_lock_irqsave(&s->lock, flags);
  x = host_read_unsafe(s->io_base);
  spin_unlock_irqrestore(&s->lock, flags);
  if (x == 0xfe || x == 0xff)
   return 1;

  msleep(10);
 } while (time_before(jiffies, end_time));

 return 0;
}
