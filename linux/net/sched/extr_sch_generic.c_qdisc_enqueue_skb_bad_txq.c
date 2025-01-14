
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {int flags; TYPE_1__ q; int skb_bad_txq; } ;
typedef int spinlock_t ;


 int TCQ_F_NOLOCK ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 scalar_t__ qdisc_is_percpu_stats (struct Qdisc*) ;
 int * qdisc_lock (struct Qdisc*) ;
 int qdisc_qstats_backlog_inc (struct Qdisc*,struct sk_buff*) ;
 int qdisc_qstats_cpu_backlog_inc (struct Qdisc*,struct sk_buff*) ;
 int qdisc_qstats_cpu_qlen_inc (struct Qdisc*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void qdisc_enqueue_skb_bad_txq(struct Qdisc *q,
          struct sk_buff *skb)
{
 spinlock_t *lock = ((void*)0);

 if (q->flags & TCQ_F_NOLOCK) {
  lock = qdisc_lock(q);
  spin_lock(lock);
 }

 __skb_queue_tail(&q->skb_bad_txq, skb);

 if (qdisc_is_percpu_stats(q)) {
  qdisc_qstats_cpu_backlog_inc(q, skb);
  qdisc_qstats_cpu_qlen_inc(q);
 } else {
  qdisc_qstats_backlog_inc(q, skb);
  q->q.qlen++;
 }

 if (lock)
  spin_unlock(lock);
}
