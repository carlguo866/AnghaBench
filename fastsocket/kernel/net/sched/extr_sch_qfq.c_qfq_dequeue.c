
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct sk_buff {int dummy; } ;
struct qfq_sched {scalar_t__ V; int * bitmaps; } ;
struct qfq_group {scalar_t__ F; unsigned long long slot_shift; scalar_t__ S; int index; } ;
struct qfq_class {int S; scalar_t__ F; int qdisc; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 size_t ER ;
 scalar_t__ IWSUM ;
 int WARN_ONCE (int,char*) ;
 int __clear_bit (int ,int *) ;
 int __set_bit (int ,int *) ;
 int pr_debug (char*,unsigned int,unsigned long long,unsigned long long) ;
 struct sk_buff* qdisc_dequeue_peeked (int ) ;
 unsigned int qdisc_pkt_len (struct sk_buff*) ;
 struct qfq_sched* qdisc_priv (struct Qdisc*) ;
 unsigned int qfq_calc_state (struct qfq_sched*,struct qfq_group*) ;
 struct qfq_group* qfq_ffs (struct qfq_sched*,int ) ;
 scalar_t__ qfq_round_down (int ,unsigned long long) ;
 struct qfq_class* qfq_slot_head (struct qfq_group*) ;
 struct qfq_class* qfq_slot_scan (struct qfq_group*) ;
 int qfq_unblock_groups (struct qfq_sched*,int ,scalar_t__) ;
 scalar_t__ qfq_update_class (struct qfq_group*,struct qfq_class*) ;
 int qfq_update_eligible (struct qfq_sched*,scalar_t__) ;

__attribute__((used)) static struct sk_buff *qfq_dequeue(struct Qdisc *sch)
{
 struct qfq_sched *q = qdisc_priv(sch);
 struct qfq_group *grp;
 struct qfq_class *cl;
 struct sk_buff *skb;
 unsigned int len;
 u64 old_V;

 if (!q->bitmaps[ER])
  return ((void*)0);

 grp = qfq_ffs(q, q->bitmaps[ER]);

 cl = qfq_slot_head(grp);
 skb = qdisc_dequeue_peeked(cl->qdisc);
 if (!skb) {
  WARN_ONCE(1, "qfq_dequeue: non-workconserving leaf\n");
  return ((void*)0);
 }

 sch->q.qlen--;

 old_V = q->V;
 len = qdisc_pkt_len(skb);
 q->V += (u64)len * IWSUM;
 pr_debug("qfq dequeue: len %u F %lld now %lld\n",
   len, (unsigned long long) cl->F, (unsigned long long) q->V);

 if (qfq_update_class(grp, cl)) {
  u64 old_F = grp->F;

  cl = qfq_slot_scan(grp);
  if (!cl)
   __clear_bit(grp->index, &q->bitmaps[ER]);
  else {
   u64 roundedS = qfq_round_down(cl->S, grp->slot_shift);
   unsigned int s;

   if (grp->S == roundedS)
    goto skip_unblock;
   grp->S = roundedS;
   grp->F = roundedS + (2ULL << grp->slot_shift);
   __clear_bit(grp->index, &q->bitmaps[ER]);
   s = qfq_calc_state(q, grp);
   __set_bit(grp->index, &q->bitmaps[s]);
  }

  qfq_unblock_groups(q, grp->index, old_F);
 }

skip_unblock:
 qfq_update_eligible(q, old_V);

 return skb;
}
