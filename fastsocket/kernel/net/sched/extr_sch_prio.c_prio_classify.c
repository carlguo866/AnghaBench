
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tcf_result {size_t classid; } ;
struct sk_buff {size_t priority; } ;
struct prio_sched_data {size_t* prio2band; size_t bands; struct Qdisc** queues; int filter_list; } ;
struct Qdisc {scalar_t__ handle; } ;


 int NET_XMIT_SUCCESS ;



 scalar_t__ TC_H_MAJ (size_t) ;
 int TC_H_MIN (size_t) ;
 size_t TC_PRIO_MAX ;
 int __NET_XMIT_BYPASS ;
 int __NET_XMIT_STOLEN ;
 struct prio_sched_data* qdisc_priv (struct Qdisc*) ;
 int tc_classify (struct sk_buff*,int ,struct tcf_result*) ;

__attribute__((used)) static struct Qdisc *
prio_classify(struct sk_buff *skb, struct Qdisc *sch, int *qerr)
{
 struct prio_sched_data *q = qdisc_priv(sch);
 u32 band = skb->priority;
 struct tcf_result res;
 int err;

 *qerr = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
 if (TC_H_MAJ(skb->priority) != sch->handle) {
  err = tc_classify(skb, q->filter_list, &res);
  if (!q->filter_list || err < 0) {
   if (TC_H_MAJ(band))
    band = 0;
   return q->queues[q->prio2band[band&TC_PRIO_MAX]];
  }
  band = res.classid;
 }
 band = TC_H_MIN(band) - 1;
 if (band >= q->bands)
  return q->queues[q->prio2band[0]];

 return q->queues[band];
}
