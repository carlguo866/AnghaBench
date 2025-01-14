
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_rr_queue {scalar_t__ q_service; scalar_t__ q_budget; int q_flags; scalar_t__ q_slice_end; } ;


 int G_FLAG_COMPLETED ;
 scalar_t__ ticks ;

__attribute__((used)) static inline int
g_rr_queue_expired(struct g_rr_queue *qp)
{

 if (qp->q_service >= qp->q_budget)
  return (1);

 if ((qp->q_flags & G_FLAG_COMPLETED) &&
     ticks - qp->q_slice_end >= 0)
  return (1);

 return (0);
}
