
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct qfq_sched {int dummy; } ;
struct TYPE_12__ {int packets; int bytes; } ;
struct TYPE_10__ {int drops; } ;
struct TYPE_9__ {int classid; } ;
struct qfq_class {scalar_t__ lmax; TYPE_8__* qdisc; TYPE_4__ bstats; TYPE_2__ qstats; int inv_w; TYPE_1__ common; } ;
struct TYPE_14__ {int qlen; } ;
struct TYPE_13__ {int packets; int bytes; } ;
struct TYPE_11__ {int drops; } ;
struct Qdisc {TYPE_6__ q; TYPE_5__ bstats; TYPE_3__ qstats; } ;
struct TYPE_15__ {int qlen; } ;
struct TYPE_16__ {TYPE_7__ q; } ;


 int NET_XMIT_SUCCESS ;
 int __NET_XMIT_BYPASS ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ net_xmit_drop_count (int) ;
 int pr_debug (char*,int,...) ;
 int qdisc_enqueue (struct sk_buff*,TYPE_8__*) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 struct qfq_sched* qdisc_priv (struct Qdisc*) ;
 int qfq_activate_class (struct qfq_sched*,struct qfq_class*,scalar_t__) ;
 struct qfq_class* qfq_classify (struct sk_buff*,struct Qdisc*,int*) ;
 int qfq_update_reactivate_class (struct qfq_sched*,struct qfq_class*,int ,scalar_t__,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int qfq_enqueue(struct sk_buff *skb, struct Qdisc *sch)
{
 struct qfq_sched *q = qdisc_priv(sch);
 struct qfq_class *cl;
 int err;

 cl = qfq_classify(skb, sch, &err);
 if (cl == ((void*)0)) {
  if (err & __NET_XMIT_BYPASS)
   sch->qstats.drops++;
  kfree_skb(skb);
  return err;
 }
 pr_debug("qfq_enqueue: cl = %x\n", cl->common.classid);

 if (unlikely(cl->lmax < qdisc_pkt_len(skb))) {
  pr_debug("qfq: increasing maxpkt from %u to %u for class %u",
     cl->lmax, qdisc_pkt_len(skb), cl->common.classid);
  qfq_update_reactivate_class(q, cl, cl->inv_w,
         qdisc_pkt_len(skb), 0);
 }

 err = qdisc_enqueue(skb, cl->qdisc);
 if (unlikely(err != NET_XMIT_SUCCESS)) {
  pr_debug("qfq_enqueue: enqueue failed %d\n", err);
  if (net_xmit_drop_count(err)) {
   cl->qstats.drops++;
   sch->qstats.drops++;
  }
  return err;
 }

 cl->bstats.bytes += qdisc_pkt_len(skb);
 cl->bstats.packets++;
 sch->bstats.bytes += qdisc_pkt_len(skb);
 sch->bstats.packets++;
 ++sch->q.qlen;


 if (cl->qdisc->q.qlen != 1)
  return err;


 qfq_activate_class(q, cl, qdisc_pkt_len(skb));

 return err;
}
