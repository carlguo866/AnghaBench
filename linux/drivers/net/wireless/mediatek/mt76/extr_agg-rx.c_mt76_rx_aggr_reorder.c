
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u16 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; scalar_t__ cb; } ;
struct mt76_wcid {int * aggr; } ;
struct mt76_rx_tid {size_t head; size_t size; int started; int lock; int reorder_work; TYPE_1__* dev; scalar_t__ nframes; struct sk_buff** reorder_buf; scalar_t__ stopped; } ;
struct mt76_rx_status {size_t tid; size_t seqno; int reorder_time; int flag; int aggr; struct mt76_wcid* wcid; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hdr {int dummy; } ;
struct TYPE_2__ {int hw; } ;


 size_t IEEE80211_QOS_CTL_ACK_POLICY_BLOCKACK ;
 size_t IEEE80211_QOS_CTL_ACK_POLICY_MASK ;
 size_t IEEE80211_QOS_CTL_ACK_POLICY_NORMAL ;
 int REORDER_TIMEOUT ;
 int RX_FLAG_DUP_VALIDATED ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int __skb_unlink (struct sk_buff*,struct sk_buff_head*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 size_t* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 void* ieee80211_sn_inc (size_t) ;
 int ieee80211_sn_less (size_t,size_t) ;
 size_t ieee80211_sn_sub (size_t,size_t) ;
 int jiffies ;
 int mt76_rx_aggr_check_ctl (struct sk_buff*,struct sk_buff_head*) ;
 int mt76_rx_aggr_release_frames (struct mt76_rx_tid*,struct sk_buff_head*,size_t) ;
 int mt76_rx_aggr_release_head (struct mt76_rx_tid*,struct sk_buff_head*) ;
 struct mt76_rx_tid* rcu_dereference (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct ieee80211_sta* wcid_to_sta (struct mt76_wcid*) ;

void mt76_rx_aggr_reorder(struct sk_buff *skb, struct sk_buff_head *frames)
{
 struct mt76_rx_status *status = (struct mt76_rx_status *)skb->cb;
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct mt76_wcid *wcid = status->wcid;
 struct ieee80211_sta *sta;
 struct mt76_rx_tid *tid;
 bool sn_less;
 u16 seqno, head, size;
 u8 ackp, idx;

 __skb_queue_tail(frames, skb);

 sta = wcid_to_sta(wcid);
 if (!sta)
  return;

 if (!status->aggr) {
  mt76_rx_aggr_check_ctl(skb, frames);
  return;
 }


 ackp = *ieee80211_get_qos_ctl(hdr) & IEEE80211_QOS_CTL_ACK_POLICY_MASK;
 if (ackp != IEEE80211_QOS_CTL_ACK_POLICY_BLOCKACK &&
     ackp != IEEE80211_QOS_CTL_ACK_POLICY_NORMAL)
  return;

 tid = rcu_dereference(wcid->aggr[status->tid]);
 if (!tid)
  return;

 status->flag |= RX_FLAG_DUP_VALIDATED;
 spin_lock_bh(&tid->lock);

 if (tid->stopped)
  goto out;

 head = tid->head;
 seqno = status->seqno;
 size = tid->size;
 sn_less = ieee80211_sn_less(seqno, head);

 if (!tid->started) {
  if (sn_less)
   goto out;

  tid->started = 1;
 }

 if (sn_less) {
  __skb_unlink(skb, frames);
  dev_kfree_skb(skb);
  goto out;
 }

 if (seqno == head) {
  tid->head = ieee80211_sn_inc(head);
  if (tid->nframes)
   mt76_rx_aggr_release_head(tid, frames);
  goto out;
 }

 __skb_unlink(skb, frames);





 if (!ieee80211_sn_less(seqno, head + size)) {
  head = ieee80211_sn_inc(ieee80211_sn_sub(seqno, size));
  mt76_rx_aggr_release_frames(tid, frames, head);
 }

 idx = seqno % size;


 if (tid->reorder_buf[idx]) {
  dev_kfree_skb(skb);
  goto out;
 }

 status->reorder_time = jiffies;
 tid->reorder_buf[idx] = skb;
 tid->nframes++;
 mt76_rx_aggr_release_head(tid, frames);

 ieee80211_queue_delayed_work(tid->dev->hw, &tid->reorder_work,
         REORDER_TIMEOUT);

out:
 spin_unlock_bh(&tid->lock);
}
