
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_hdr {int frame_control; } ;


 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int RX_FLAG_FAILED_FCS_CRC ;
 int RX_FLAG_FAILED_PLCP_CRC ;
 int RX_FLAG_NO_PSDU ;
 int RX_FLAG_ONLY_MONITOR ;
 int ieee80211_is_back_req (int ) ;
 scalar_t__ ieee80211_is_ctl (int ) ;
 int ieee80211_is_pspoll (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool should_drop_frame(struct sk_buff *skb, int present_fcs_len,
         unsigned int rtap_space)
{
 struct ieee80211_rx_status *status = IEEE80211_SKB_RXCB(skb);
 struct ieee80211_hdr *hdr;

 hdr = (void *)(skb->data + rtap_space);

 if (status->flag & (RX_FLAG_FAILED_FCS_CRC |
       RX_FLAG_FAILED_PLCP_CRC |
       RX_FLAG_ONLY_MONITOR |
       RX_FLAG_NO_PSDU))
  return 1;

 if (unlikely(skb->len < 16 + present_fcs_len + rtap_space))
  return 1;

 if (ieee80211_is_ctl(hdr->frame_control) &&
     !ieee80211_is_pspoll(hdr->frame_control) &&
     !ieee80211_is_back_req(hdr->frame_control))
  return 1;

 return 0;
}
