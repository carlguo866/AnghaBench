
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct rtl8xxxu_rxdesc16 {int pkt_cnt; int pktlen; int drvinfo_sz; int shift; scalar_t__ rxmcs; scalar_t__ rxht; scalar_t__ bw; scalar_t__ crc32; int swdec; int tsfl; scalar_t__ phy_stats; } ;
struct rtl8xxxu_priv {struct ieee80211_hw* hw; } ;
struct rtl8723au_phy_stats {int dummy; } ;
struct ieee80211_rx_status {int band; int freq; scalar_t__ rate_idx; int encoding; int bw; int flag; int mactime; } ;
struct TYPE_5__ {TYPE_1__* chan; } ;
struct TYPE_6__ {TYPE_2__ chandef; } ;
struct ieee80211_hw {TYPE_3__ conf; } ;
typedef int __le32 ;
struct TYPE_4__ {int band; int center_freq; } ;


 scalar_t__ DESC_RATE_MCS0 ;
 int GFP_ATOMIC ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int RATE_INFO_BW_40 ;
 int RX_ENC_HT ;
 int RX_FLAG_DECRYPTED ;
 int RX_FLAG_FAILED_FCS_CRC ;
 int RX_FLAG_MACTIME_START ;
 int RX_TYPE_DATA_PKT ;
 int ieee80211_rx_irqsafe (struct ieee80211_hw*,struct sk_buff*) ;
 int le32_to_cpu (int ) ;
 int memset (struct ieee80211_rx_status*,int ,int) ;
 int roundup (int,int) ;
 int rtl8xxxu_rx_parse_phystats (struct rtl8xxxu_priv*,struct ieee80211_rx_status*,struct rtl8723au_phy_stats*,scalar_t__) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int) ;

int rtl8xxxu_parse_rxdesc16(struct rtl8xxxu_priv *priv, struct sk_buff *skb)
{
 struct ieee80211_hw *hw = priv->hw;
 struct ieee80211_rx_status *rx_status;
 struct rtl8xxxu_rxdesc16 *rx_desc;
 struct rtl8723au_phy_stats *phy_stats;
 struct sk_buff *next_skb = ((void*)0);
 __le32 *_rx_desc_le;
 u32 *_rx_desc;
 int drvinfo_sz, desc_shift;
 int i, pkt_cnt, pkt_len, urb_len, pkt_offset;

 urb_len = skb->len;
 pkt_cnt = 0;

 do {
  rx_desc = (struct rtl8xxxu_rxdesc16 *)skb->data;
  _rx_desc_le = (__le32 *)skb->data;
  _rx_desc = (u32 *)skb->data;

  for (i = 0;
       i < (sizeof(struct rtl8xxxu_rxdesc16) / sizeof(u32)); i++)
   _rx_desc[i] = le32_to_cpu(_rx_desc_le[i]);





  if (!pkt_cnt)
   pkt_cnt = rx_desc->pkt_cnt;
  pkt_len = rx_desc->pktlen;

  drvinfo_sz = rx_desc->drvinfo_sz * 8;
  desc_shift = rx_desc->shift;
  pkt_offset = roundup(pkt_len + drvinfo_sz + desc_shift +
         sizeof(struct rtl8xxxu_rxdesc16), 128);





  if (pkt_cnt > 1 &&
      urb_len > (pkt_offset + sizeof(struct rtl8xxxu_rxdesc16)))
   next_skb = skb_clone(skb, GFP_ATOMIC);

  rx_status = IEEE80211_SKB_RXCB(skb);
  memset(rx_status, 0, sizeof(struct ieee80211_rx_status));

  skb_pull(skb, sizeof(struct rtl8xxxu_rxdesc16));

  phy_stats = (struct rtl8723au_phy_stats *)skb->data;

  skb_pull(skb, drvinfo_sz + desc_shift);

  skb_trim(skb, pkt_len);

  if (rx_desc->phy_stats)
   rtl8xxxu_rx_parse_phystats(priv, rx_status, phy_stats,
         rx_desc->rxmcs);

  rx_status->mactime = rx_desc->tsfl;
  rx_status->flag |= RX_FLAG_MACTIME_START;

  if (!rx_desc->swdec)
   rx_status->flag |= RX_FLAG_DECRYPTED;
  if (rx_desc->crc32)
   rx_status->flag |= RX_FLAG_FAILED_FCS_CRC;
  if (rx_desc->bw)
   rx_status->bw = RATE_INFO_BW_40;

  if (rx_desc->rxht) {
   rx_status->encoding = RX_ENC_HT;
   rx_status->rate_idx = rx_desc->rxmcs - DESC_RATE_MCS0;
  } else {
   rx_status->rate_idx = rx_desc->rxmcs;
  }

  rx_status->freq = hw->conf.chandef.chan->center_freq;
  rx_status->band = hw->conf.chandef.chan->band;

  ieee80211_rx_irqsafe(hw, skb);

  skb = next_skb;
  if (skb)
   skb_pull(next_skb, pkt_offset);

  pkt_cnt--;
  urb_len -= pkt_offset;
 } while (skb && urb_len > 0 && pkt_cnt > 0);

 return RX_TYPE_DATA_PKT;
}
