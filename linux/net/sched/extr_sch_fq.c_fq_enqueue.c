
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_pacing_status; } ;
struct sk_buff {struct sock* sk; } ;
struct fq_flow {scalar_t__ qlen; int credit; scalar_t__ age; } ;
struct fq_sched_data {scalar_t__ flow_plimit; int stat_internal_packets; struct fq_flow internal; int inactive_flows; scalar_t__ rate_enable; int quantum; scalar_t__ flow_refill_delay; int new_flows; int stat_flows_plimit; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct Qdisc {scalar_t__ limit; TYPE_1__ q; } ;


 int NET_XMIT_SUCCESS ;
 scalar_t__ SK_PACING_FQ ;
 int flow_queue_add (struct fq_flow*,struct sk_buff*) ;
 struct fq_flow* fq_classify (struct sk_buff*,struct fq_sched_data*) ;
 int fq_flow_add_tail (int *,struct fq_flow*) ;
 scalar_t__ fq_flow_is_detached (struct fq_flow*) ;
 int jiffies ;
 int max_t (int ,int ,int ) ;
 int qdisc_drop (struct sk_buff*,struct Qdisc*,struct sk_buff**) ;
 struct fq_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_backlog_inc (struct Qdisc*,struct sk_buff*) ;
 scalar_t__ smp_load_acquire (int *) ;
 int smp_store_release (int *,scalar_t__) ;
 scalar_t__ time_after (int ,scalar_t__) ;
 int u32 ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int fq_enqueue(struct sk_buff *skb, struct Qdisc *sch,
        struct sk_buff **to_free)
{
 struct fq_sched_data *q = qdisc_priv(sch);
 struct fq_flow *f;

 if (unlikely(sch->q.qlen >= sch->limit))
  return qdisc_drop(skb, sch, to_free);

 f = fq_classify(skb, q);
 if (unlikely(f->qlen >= q->flow_plimit && f != &q->internal)) {
  q->stat_flows_plimit++;
  return qdisc_drop(skb, sch, to_free);
 }

 f->qlen++;
 qdisc_qstats_backlog_inc(sch, skb);
 if (fq_flow_is_detached(f)) {
  struct sock *sk = skb->sk;

  fq_flow_add_tail(&q->new_flows, f);
  if (time_after(jiffies, f->age + q->flow_refill_delay))
   f->credit = max_t(u32, f->credit, q->quantum);
  if (sk && q->rate_enable) {
   if (unlikely(smp_load_acquire(&sk->sk_pacing_status) !=
         SK_PACING_FQ))
    smp_store_release(&sk->sk_pacing_status,
        SK_PACING_FQ);
  }
  q->inactive_flows--;
 }


 flow_queue_add(f, skb);

 if (unlikely(f == &q->internal)) {
  q->stat_internal_packets++;
 }
 sch->q.qlen++;

 return NET_XMIT_SUCCESS;
}
