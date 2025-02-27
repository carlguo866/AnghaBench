
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {unsigned long driver_buffered_tids; unsigned long txq_buffered_tids; struct sk_buff_head* ps_tx_buf; struct sk_buff_head* tx_filtered; struct ieee80211_sub_if_data* sdata; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int total_ps_buffered; } ;
typedef enum ieee80211_frame_release_type { ____Placeholder_ieee80211_frame_release_type } ieee80211_frame_release_type ;


 int IEEE80211_NUM_ACS ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int* ieee80211_ac_to_qos_mask ;
 unsigned long ieee80211_tids_for_ac (int) ;
 struct sk_buff* skb_dequeue (struct sk_buff_head*) ;
 scalar_t__ skb_queue_empty (struct sk_buff_head*) ;

__attribute__((used)) static void
ieee80211_sta_ps_get_frames(struct sta_info *sta, int n_frames, u8 ignored_acs,
       enum ieee80211_frame_release_type reason,
       struct sk_buff_head *frames,
       unsigned long *driver_release_tids)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 struct ieee80211_local *local = sdata->local;
 int ac;


 for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
  unsigned long tids;

  if (ignored_acs & ieee80211_ac_to_qos_mask[ac])
   continue;

  tids = ieee80211_tids_for_ac(ac);




  if (skb_queue_empty(frames)) {
   *driver_release_tids |=
    sta->driver_buffered_tids & tids;
   *driver_release_tids |= sta->txq_buffered_tids & tids;
  }

  if (!*driver_release_tids) {
   struct sk_buff *skb;

   while (n_frames > 0) {
    skb = skb_dequeue(&sta->tx_filtered[ac]);
    if (!skb) {
     skb = skb_dequeue(
      &sta->ps_tx_buf[ac]);
     if (skb)
      local->total_ps_buffered--;
    }
    if (!skb)
     break;
    n_frames--;
    __skb_queue_tail(frames, skb);
   }
  }





  if (!skb_queue_empty(&sta->tx_filtered[ac]) ||
      !skb_queue_empty(&sta->ps_tx_buf[ac]))
   break;
 }
}
