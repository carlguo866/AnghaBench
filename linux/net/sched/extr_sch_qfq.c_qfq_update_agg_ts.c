
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qfq_sched {int dummy; } ;
struct qfq_aggregate {int inv_w; scalar_t__ budgetmax; scalar_t__ S; scalar_t__ F; } ;
typedef enum update_reason { ____Placeholder_update_reason } update_reason ;


 int qfq_update_start (struct qfq_sched*,struct qfq_aggregate*) ;
 int requeue ;

__attribute__((used)) static inline void
qfq_update_agg_ts(struct qfq_sched *q,
      struct qfq_aggregate *agg, enum update_reason reason)
{
 if (reason != requeue)
  qfq_update_start(q, agg);
 else
  agg->S = agg->F;

 agg->F = agg->S + (u64)agg->budgetmax * agg->inv_w;
}
