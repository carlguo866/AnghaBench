
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct skb_info {char rssi; int channel; } ;
struct sk_buff {scalar_t__ data; } ;
struct rsi_hw {struct ieee80211_vif** vifs; } ;
struct rsi_common {int band; struct rsi_hw* priv; } ;
struct ieee80211_bss_conf {int bssid; scalar_t__ assoc; } ;
struct ieee80211_vif {scalar_t__ type; struct ieee80211_bss_conf bss_conf; } ;
struct ieee80211_tx_info {scalar_t__ driver_data; } ;
struct ieee80211_rx_status {char signal; int flag; scalar_t__ freq; int band; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int addr2; int frame_control; } ;
typedef scalar_t__ s32 ;


 int ETH_ALEN ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int RSI_MAX_VIFS ;
 int RX_FLAG_DECRYPTED ;
 int RX_FLAG_IV_STRIPPED ;
 int RX_FLAG_MMIC_STRIPPED ;
 scalar_t__ ieee80211_channel_to_frequency (int ,int ) ;
 scalar_t__ ieee80211_has_protected (int ) ;
 int ieee80211_hdrlen (int ) ;
 scalar_t__ ieee80211_is_beacon (int ) ;
 int memcmp (int ,int ,int ) ;
 int memmove (scalar_t__,scalar_t__,int ) ;
 int memset (struct ieee80211_tx_info*,int ,int) ;
 scalar_t__ rsi_is_cipher_wep (struct rsi_common*) ;
 int rsi_perform_cqm (struct rsi_common*,int ,char,struct ieee80211_vif*) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static void rsi_fill_rx_status(struct ieee80211_hw *hw,
          struct sk_buff *skb,
          struct rsi_common *common,
          struct ieee80211_rx_status *rxs)
{
 struct rsi_hw *adapter = common->priv;
 struct ieee80211_vif *vif;
 struct ieee80211_bss_conf *bss = ((void*)0);
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct skb_info *rx_params = (struct skb_info *)info->driver_data;
 struct ieee80211_hdr *hdr;
 char rssi = rx_params->rssi;
 u8 hdrlen = 0;
 u8 channel = rx_params->channel;
 s32 freq;
 int i;

 hdr = ((struct ieee80211_hdr *)(skb->data));
 hdrlen = ieee80211_hdrlen(hdr->frame_control);

 memset(info, 0, sizeof(struct ieee80211_tx_info));

 rxs->signal = -(rssi);

 rxs->band = common->band;

 freq = ieee80211_channel_to_frequency(channel, rxs->band);

 if (freq)
  rxs->freq = freq;

 if (ieee80211_has_protected(hdr->frame_control)) {
  if (rsi_is_cipher_wep(common)) {
   memmove(skb->data + 4, skb->data, hdrlen);
   skb_pull(skb, 4);
  } else {
   memmove(skb->data + 8, skb->data, hdrlen);
   skb_pull(skb, 8);
   rxs->flag |= RX_FLAG_MMIC_STRIPPED;
  }
  rxs->flag |= RX_FLAG_DECRYPTED;
  rxs->flag |= RX_FLAG_IV_STRIPPED;
 }

 for (i = 0; i < RSI_MAX_VIFS; i++) {
  vif = adapter->vifs[i];
  if (!vif)
   continue;
  if (vif->type == NL80211_IFTYPE_STATION) {
   bss = &vif->bss_conf;
   break;
  }
 }
 if (!bss)
  return;

 if (bss->assoc && !(memcmp(bss->bssid, hdr->addr2, ETH_ALEN))) {
  if (ieee80211_is_beacon(hdr->frame_control))
   rsi_perform_cqm(common, hdr->addr2, rxs->signal, vif);
 }

 return;
}
