
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgpath {int dummy; } ;
struct multipath {scalar_t__ pg_init_count; scalar_t__ pg_init_retries; int pg_init_required; int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pg_init_limit_reached(struct multipath *m, struct pgpath *pgpath)
{
 unsigned long flags;
 int limit_reached = 0;

 spin_lock_irqsave(&m->lock, flags);

 if (m->pg_init_count <= m->pg_init_retries)
  m->pg_init_required = 1;
 else
  limit_reached = 1;

 spin_unlock_irqrestore(&m->lock, flags);

 return limit_reached;
}
