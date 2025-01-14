
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct codel_sched_data {int drop_overlimit; } ;
struct Qdisc {scalar_t__ limit; } ;


 int codel_set_enqueue_time (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int qdisc_drop (struct sk_buff*,struct Qdisc*,struct sk_buff**) ;
 int qdisc_enqueue_tail (struct sk_buff*,struct Qdisc*) ;
 struct codel_sched_data* qdisc_priv (struct Qdisc*) ;
 scalar_t__ qdisc_qlen (struct Qdisc*) ;

__attribute__((used)) static int codel_qdisc_enqueue(struct sk_buff *skb, struct Qdisc *sch,
          struct sk_buff **to_free)
{
 struct codel_sched_data *q;

 if (likely(qdisc_qlen(sch) < sch->limit)) {
  codel_set_enqueue_time(skb);
  return qdisc_enqueue_tail(skb, sch);
 }
 q = qdisc_priv(sch);
 q->drop_overlimit++;
 return qdisc_drop(skb, sch, to_free);
}
