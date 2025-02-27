
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_rx_status {int flag; int ampdu_reference; int bw; int encoding; scalar_t__ nss; scalar_t__ rate_idx; scalar_t__ freq; } ;
struct TYPE_2__ {int flags; } ;
struct htt_rx_desc {TYPE_1__ attention; } ;
struct ath10k {int ampdu_reference; } ;


 int RATE_INFO_BW_20 ;
 int RX_ATTENTION_FLAGS_FIRST_MPDU ;
 int RX_ATTENTION_FLAGS_LAST_MPDU ;
 int RX_ENC_LEGACY ;
 int RX_FLAG_AMPDU_DETAILS ;
 int RX_FLAG_AMPDU_IS_LAST ;
 int RX_FLAG_AMPDU_LAST_KNOWN ;
 int RX_FLAG_MACTIME_END ;
 int RX_FLAG_NO_SIGNAL_VAL ;
 int __cpu_to_le32 (int ) ;
 int ath10k_htt_rx_h_channel (struct ath10k*,struct ieee80211_rx_status*,struct htt_rx_desc*,int ) ;
 int ath10k_htt_rx_h_mactime (struct ath10k*,struct ieee80211_rx_status*,struct htt_rx_desc*) ;
 int ath10k_htt_rx_h_rates (struct ath10k*,struct ieee80211_rx_status*,struct htt_rx_desc*) ;
 int ath10k_htt_rx_h_signal (struct ath10k*,struct ieee80211_rx_status*,struct htt_rx_desc*) ;
 struct sk_buff* skb_peek (struct sk_buff_head*) ;
 scalar_t__ skb_queue_empty (struct sk_buff_head*) ;

__attribute__((used)) static void ath10k_htt_rx_h_ppdu(struct ath10k *ar,
     struct sk_buff_head *amsdu,
     struct ieee80211_rx_status *status,
     u32 vdev_id)
{
 struct sk_buff *first;
 struct htt_rx_desc *rxd;
 bool is_first_ppdu;
 bool is_last_ppdu;

 if (skb_queue_empty(amsdu))
  return;

 first = skb_peek(amsdu);
 rxd = (void *)first->data - sizeof(*rxd);

 is_first_ppdu = !!(rxd->attention.flags &
      __cpu_to_le32(RX_ATTENTION_FLAGS_FIRST_MPDU));
 is_last_ppdu = !!(rxd->attention.flags &
     __cpu_to_le32(RX_ATTENTION_FLAGS_LAST_MPDU));

 if (is_first_ppdu) {

  status->freq = 0;
  status->rate_idx = 0;
  status->nss = 0;
  status->encoding = RX_ENC_LEGACY;
  status->bw = RATE_INFO_BW_20;

  status->flag &= ~RX_FLAG_MACTIME_END;
  status->flag |= RX_FLAG_NO_SIGNAL_VAL;

  status->flag &= ~(RX_FLAG_AMPDU_IS_LAST);
  status->flag |= RX_FLAG_AMPDU_DETAILS | RX_FLAG_AMPDU_LAST_KNOWN;
  status->ampdu_reference = ar->ampdu_reference;

  ath10k_htt_rx_h_signal(ar, status, rxd);
  ath10k_htt_rx_h_channel(ar, status, rxd, vdev_id);
  ath10k_htt_rx_h_rates(ar, status, rxd);
 }

 if (is_last_ppdu) {
  ath10k_htt_rx_h_mactime(ar, status, rxd);


  status->flag |= RX_FLAG_AMPDU_IS_LAST;
  ar->ampdu_reference++;
 }
}
