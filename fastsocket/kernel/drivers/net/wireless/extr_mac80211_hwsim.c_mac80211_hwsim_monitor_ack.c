
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int cb; int protocol; int pkt_type; int ip_summed; int dev; } ;
struct ieee80211_hdr {int addr1; void* duration_id; void* frame_control; } ;
struct ieee80211_channel {int center_freq; } ;
struct TYPE_2__ {int it_present; void* it_len; scalar_t__ it_pad; int it_version; } ;
struct hwsim_radiotap_hdr {void* rt_chbitmask; void* rt_channel; scalar_t__ rt_rate; scalar_t__ rt_flags; TYPE_1__ hdr; } ;


 int CHECKSUM_UNNECESSARY ;
 int ETH_ALEN ;
 int ETH_P_802_2 ;
 int IEEE80211_CHAN_2GHZ ;
 int IEEE80211_FTYPE_CTL ;
 int IEEE80211_RADIOTAP_CHANNEL ;
 int IEEE80211_RADIOTAP_FLAGS ;
 int IEEE80211_STYPE_ACK ;
 int PACKET_OTHERHOST ;
 int PKTHDR_RADIOTAP_VERSION ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int htons (int ) ;
 int hwsim_mon ;
 int memcpy (int ,int const*,int ) ;
 int memset (int ,int ,int) ;
 int netif_running (int ) ;
 int netif_rx (struct sk_buff*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_set_mac_header (struct sk_buff*,int ) ;

__attribute__((used)) static void mac80211_hwsim_monitor_ack(struct ieee80211_channel *chan,
           const u8 *addr)
{
 struct sk_buff *skb;
 struct hwsim_radiotap_hdr *hdr;
 u16 flags;
 struct ieee80211_hdr *hdr11;

 if (!netif_running(hwsim_mon))
  return;

 skb = dev_alloc_skb(100);
 if (skb == ((void*)0))
  return;

 hdr = (struct hwsim_radiotap_hdr *) skb_put(skb, sizeof(*hdr));
 hdr->hdr.it_version = PKTHDR_RADIOTAP_VERSION;
 hdr->hdr.it_pad = 0;
 hdr->hdr.it_len = cpu_to_le16(sizeof(*hdr));
 hdr->hdr.it_present = cpu_to_le32((1 << IEEE80211_RADIOTAP_FLAGS) |
       (1 << IEEE80211_RADIOTAP_CHANNEL));
 hdr->rt_flags = 0;
 hdr->rt_rate = 0;
 hdr->rt_channel = cpu_to_le16(chan->center_freq);
 flags = IEEE80211_CHAN_2GHZ;
 hdr->rt_chbitmask = cpu_to_le16(flags);

 hdr11 = (struct ieee80211_hdr *) skb_put(skb, 10);
 hdr11->frame_control = cpu_to_le16(IEEE80211_FTYPE_CTL |
        IEEE80211_STYPE_ACK);
 hdr11->duration_id = cpu_to_le16(0);
 memcpy(hdr11->addr1, addr, ETH_ALEN);

 skb->dev = hwsim_mon;
 skb_set_mac_header(skb, 0);
 skb->ip_summed = CHECKSUM_UNNECESSARY;
 skb->pkt_type = PACKET_OTHERHOST;
 skb->protocol = htons(ETH_P_802_2);
 memset(skb->cb, 0, sizeof(skb->cb));
 netif_rx(skb);
}
