
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int vif; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct TYPE_4__ {int queues; } ;
struct ieee80211_local {int queue_stop_reason_lock; int * pending; TYPE_2__ hw; scalar_t__* queue_stop_reasons; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 scalar_t__ WARN_ON (int) ;
 struct sk_buff* __skb_dequeue (int *) ;
 int ieee80211_free_txskb (TYPE_2__*,struct sk_buff*) ;
 int ieee80211_propagate_queue_wake (struct ieee80211_local*,int) ;
 int ieee80211_tx_pending_skb (struct ieee80211_local*,struct sk_buff*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ skb_queue_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ieee80211_tx_pending(unsigned long data)
{
 struct ieee80211_local *local = (struct ieee80211_local *)data;
 unsigned long flags;
 int i;
 bool txok;

 rcu_read_lock();

 spin_lock_irqsave(&local->queue_stop_reason_lock, flags);
 for (i = 0; i < local->hw.queues; i++) {




  if (local->queue_stop_reasons[i] ||
      skb_queue_empty(&local->pending[i]))
   continue;

  while (!skb_queue_empty(&local->pending[i])) {
   struct sk_buff *skb = __skb_dequeue(&local->pending[i]);
   struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);

   if (WARN_ON(!info->control.vif)) {
    ieee80211_free_txskb(&local->hw, skb);
    continue;
   }

   spin_unlock_irqrestore(&local->queue_stop_reason_lock,
      flags);

   txok = ieee80211_tx_pending_skb(local, skb);
   spin_lock_irqsave(&local->queue_stop_reason_lock,
       flags);
   if (!txok)
    break;
  }

  if (skb_queue_empty(&local->pending[i]))
   ieee80211_propagate_queue_wake(local, i);
 }
 spin_unlock_irqrestore(&local->queue_stop_reason_lock, flags);

 rcu_read_unlock();
}
