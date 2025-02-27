
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct sfq_sched_data {int max_depth; int* next; size_t tail; int* ht; size_t* hash; TYPE_4__* qs; scalar_t__ quantum; int * allot; TYPE_1__* dep; } ;
struct TYPE_7__ {unsigned int backlog; int drops; } ;
struct TYPE_6__ {int qlen; } ;
struct Qdisc {TYPE_3__ qstats; TYPE_2__ q; } ;
typedef int sfq_index ;
struct TYPE_8__ {struct sk_buff* prev; } ;
struct TYPE_5__ {int next; } ;


 int SFQ_DEPTH ;
 int __skb_unlink (struct sk_buff*,TYPE_4__*) ;
 int kfree_skb (struct sk_buff*) ;
 unsigned int qdisc_pkt_len (struct sk_buff*) ;
 struct sfq_sched_data* qdisc_priv (struct Qdisc*) ;
 int sfq_dec (struct sfq_sched_data*,int) ;

__attribute__((used)) static unsigned int sfq_drop(struct Qdisc *sch)
{
 struct sfq_sched_data *q = qdisc_priv(sch);
 sfq_index d = q->max_depth;
 struct sk_buff *skb;
 unsigned int len;




 if (d > 1) {
  sfq_index x = q->dep[d + SFQ_DEPTH].next;
  skb = q->qs[x].prev;
  len = qdisc_pkt_len(skb);
  __skb_unlink(skb, &q->qs[x]);
  kfree_skb(skb);
  sfq_dec(q, x);
  sch->q.qlen--;
  sch->qstats.drops++;
  sch->qstats.backlog -= len;
  return len;
 }

 if (d == 1) {

  d = q->next[q->tail];
  q->next[q->tail] = q->next[d];
  q->allot[q->next[d]] += q->quantum;
  skb = q->qs[d].prev;
  len = qdisc_pkt_len(skb);
  __skb_unlink(skb, &q->qs[d]);
  kfree_skb(skb);
  sfq_dec(q, d);
  sch->q.qlen--;
  q->ht[q->hash[d]] = SFQ_DEPTH;
  sch->qstats.drops++;
  sch->qstats.backlog -= len;
  return len;
 }

 return 0;
}
