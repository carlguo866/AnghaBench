
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_cbq_wrropt {scalar_t__ priority; scalar_t__ weight; scalar_t__ allot; } ;
struct cbq_sched_data {int dummy; } ;
struct cbq_class {scalar_t__ priority; scalar_t__ cpriority; scalar_t__ priority2; scalar_t__ weight; scalar_t__ allot; int qdisc; } ;


 scalar_t__ TC_CBQ_MAXPRIO ;
 int cbq_addprio (struct cbq_sched_data*,struct cbq_class*) ;
 struct cbq_sched_data* qdisc_priv (int ) ;

__attribute__((used)) static int cbq_set_wrr(struct cbq_class *cl, struct tc_cbq_wrropt *wrr)
{
 struct cbq_sched_data *q = qdisc_priv(cl->qdisc);

 if (wrr->allot)
  cl->allot = wrr->allot;
 if (wrr->weight)
  cl->weight = wrr->weight;
 if (wrr->priority) {
  cl->priority = wrr->priority - 1;
  cl->cpriority = cl->priority;
  if (cl->priority >= cl->priority2)
   cl->priority2 = TC_CBQ_MAXPRIO - 1;
 }

 cbq_addprio(q, cl);
 return 0;
}
