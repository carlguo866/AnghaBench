
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tcf_result {int dummy; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {int dummy; } ;
struct multiq_sched_data {size_t bands; struct Qdisc** queues; int filter_list; } ;
struct Qdisc {int dummy; } ;


 int NET_XMIT_SUCCESS ;




 int __NET_XMIT_BYPASS ;
 int __NET_XMIT_STOLEN ;
 struct multiq_sched_data* qdisc_priv (struct Qdisc*) ;
 struct tcf_proto* rcu_dereference_bh (int ) ;
 size_t skb_get_queue_mapping (struct sk_buff*) ;
 int tcf_classify (struct sk_buff*,struct tcf_proto*,struct tcf_result*,int) ;

__attribute__((used)) static struct Qdisc *
multiq_classify(struct sk_buff *skb, struct Qdisc *sch, int *qerr)
{
 struct multiq_sched_data *q = qdisc_priv(sch);
 u32 band;
 struct tcf_result res;
 struct tcf_proto *fl = rcu_dereference_bh(q->filter_list);
 int err;

 *qerr = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
 err = tcf_classify(skb, fl, &res, 0);
 band = skb_get_queue_mapping(skb);

 if (band >= q->bands)
  return q->queues[0];

 return q->queues[band];
}
