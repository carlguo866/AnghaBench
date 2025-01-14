
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_11__ {int pdrop; int forced_mark; int forced_drop; int prob_mark; int prob_drop; } ;
struct TYPE_13__ {int qavg; } ;
struct red_sched_data {TYPE_3__ stats; TYPE_5__ parms; struct Qdisc* qdisc; } ;
struct TYPE_12__ {int drops; int overlimits; int backlog; } ;
struct TYPE_10__ {int qlen; } ;
struct TYPE_9__ {int packets; int bytes; } ;
struct Qdisc {TYPE_4__ qstats; TYPE_2__ q; TYPE_1__ bstats; } ;


 int INET_ECN_set_ce (struct sk_buff*) ;
 int NET_XMIT_CN ;
 int NET_XMIT_SUCCESS ;



 scalar_t__ likely (int) ;
 scalar_t__ net_xmit_drop_count (int) ;
 int qdisc_drop (struct sk_buff*,struct Qdisc*) ;
 int qdisc_enqueue (struct sk_buff*,struct Qdisc*) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 struct red_sched_data* qdisc_priv (struct Qdisc*) ;
 int red_action (TYPE_5__*,int ) ;
 int red_calc_qavg (TYPE_5__*,int ) ;
 int red_end_of_idle_period (TYPE_5__*) ;
 scalar_t__ red_is_idling (TYPE_5__*) ;
 int red_use_ecn (struct red_sched_data*) ;
 int red_use_harddrop (struct red_sched_data*) ;

__attribute__((used)) static int red_enqueue(struct sk_buff *skb, struct Qdisc* sch)
{
 struct red_sched_data *q = qdisc_priv(sch);
 struct Qdisc *child = q->qdisc;
 int ret;

 q->parms.qavg = red_calc_qavg(&q->parms, child->qstats.backlog);

 if (red_is_idling(&q->parms))
  red_end_of_idle_period(&q->parms);

 switch (red_action(&q->parms, q->parms.qavg)) {
  case 130:
   break;

  case 128:
   sch->qstats.overlimits++;
   if (!red_use_ecn(q) || !INET_ECN_set_ce(skb)) {
    q->stats.prob_drop++;
    goto congestion_drop;
   }

   q->stats.prob_mark++;
   break;

  case 129:
   sch->qstats.overlimits++;
   if (red_use_harddrop(q) || !red_use_ecn(q) ||
       !INET_ECN_set_ce(skb)) {
    q->stats.forced_drop++;
    goto congestion_drop;
   }

   q->stats.forced_mark++;
   break;
 }

 ret = qdisc_enqueue(skb, child);
 if (likely(ret == NET_XMIT_SUCCESS)) {
  sch->bstats.bytes += qdisc_pkt_len(skb);
  sch->bstats.packets++;
  sch->q.qlen++;
 } else if (net_xmit_drop_count(ret)) {
  q->stats.pdrop++;
  sch->qstats.drops++;
 }
 return ret;

congestion_drop:
 qdisc_drop(skb, sch);
 return NET_XMIT_CN;
}
