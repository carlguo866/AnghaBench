
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdisc_walker {int stop; scalar_t__ count; scalar_t__ skip; scalar_t__ (* fn ) (struct Qdisc*,int,struct qdisc_walker*) ;} ;
struct prio_sched_data {int bands; } ;
struct Qdisc {int dummy; } ;


 struct prio_sched_data* qdisc_priv (struct Qdisc*) ;
 scalar_t__ stub1 (struct Qdisc*,int,struct qdisc_walker*) ;

__attribute__((used)) static void prio_walk(struct Qdisc *sch, struct qdisc_walker *arg)
{
 struct prio_sched_data *q = qdisc_priv(sch);
 int prio;

 if (arg->stop)
  return;

 for (prio = 0; prio < q->bands; prio++) {
  if (arg->count < arg->skip) {
   arg->count++;
   continue;
  }
  if (arg->fn(sch, prio + 1, arg) < 0) {
   arg->stop = 1;
   break;
  }
  arg->count++;
 }
}
