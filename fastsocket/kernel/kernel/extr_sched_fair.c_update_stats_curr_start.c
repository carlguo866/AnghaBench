
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sched_entity {int exec_start; } ;
struct cfs_rq {int dummy; } ;
struct TYPE_2__ {int clock; } ;


 TYPE_1__* rq_of (struct cfs_rq*) ;

__attribute__((used)) static inline void
update_stats_curr_start(struct cfs_rq *cfs_rq, struct sched_entity *se)
{



 se->exec_start = rq_of(cfs_rq)->clock;
}
