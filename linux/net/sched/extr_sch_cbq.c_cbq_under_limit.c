
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cbq_sched_data {scalar_t__ now; scalar_t__ toplevel; } ;
struct TYPE_2__ {int overlimits; } ;
struct cbq_class {scalar_t__ undertime; scalar_t__ level; scalar_t__ delayed; TYPE_1__ qstats; struct cbq_class* borrow; int * tparent; int qdisc; } ;


 scalar_t__ PSCHED_PASTPERFECT ;
 int cbq_overlimit (struct cbq_class*) ;
 struct cbq_sched_data* qdisc_priv (int ) ;

__attribute__((used)) static inline struct cbq_class *
cbq_under_limit(struct cbq_class *cl)
{
 struct cbq_sched_data *q = qdisc_priv(cl->qdisc);
 struct cbq_class *this_cl = cl;

 if (cl->tparent == ((void*)0))
  return cl;

 if (cl->undertime == PSCHED_PASTPERFECT || q->now >= cl->undertime) {
  cl->delayed = 0;
  return cl;
 }

 do {
  cl = cl->borrow;
  if (!cl) {
   this_cl->qstats.overlimits++;
   cbq_overlimit(this_cl);
   return ((void*)0);
  }
  if (cl->level > q->toplevel)
   return ((void*)0);
 } while (cl->undertime != PSCHED_PASTPERFECT && q->now < cl->undertime);

 cl->delayed = 0;
 return cl;
}
