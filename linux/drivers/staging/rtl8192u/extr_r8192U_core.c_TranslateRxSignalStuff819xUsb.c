
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; scalar_t__ cb; } ;
struct rx_drvinfo_819x_usb {int dummy; } ;
struct rtl_80211_hdr_3addr {int * addr3; int * addr2; int * addr1; int frame_ctl; } ;
struct rtl8192_rx_info {struct net_device* dev; } ;
struct TYPE_8__ {int numpacket_toself; int numpacket_matchbssid; } ;
struct r8192_priv {TYPE_4__ stats; TYPE_3__* ieee80211; } ;
struct net_device {int * dev_addr; } ;
struct ieee80211_rx_stats {int bICV; int bCRC; int bHwError; } ;
struct TYPE_5__ {int * bssid; } ;
struct TYPE_7__ {TYPE_2__* dev; TYPE_1__ current_network; } ;
struct TYPE_6__ {int * dev_addr; } ;


 scalar_t__ IEEE80211_FCTL_FROMDS ;
 scalar_t__ IEEE80211_FCTL_TODS ;
 scalar_t__ IEEE80211_FTYPE_CTL ;
 scalar_t__ IEEE80211_STYPE_BEACON ;
 scalar_t__ IEEE80211_STYPE_BLOCKACK ;
 scalar_t__ WLAN_FC_GET_FRAMETYPE (scalar_t__) ;
 scalar_t__ WLAN_FC_GET_TYPE (scalar_t__) ;
 int ether_addr_equal (int *,int *) ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int rtl8192_process_phyinfo (struct r8192_priv*,int *,struct ieee80211_rx_stats*,struct ieee80211_rx_stats*) ;
 int rtl8192_query_rxphystatus (struct r8192_priv*,struct ieee80211_rx_stats*,struct rx_drvinfo_819x_usb*,struct ieee80211_rx_stats*,int,int,int,int) ;
 int rtl8192_record_rxdesc_forlateruse (struct ieee80211_rx_stats*,struct ieee80211_rx_stats*) ;

__attribute__((used)) static void TranslateRxSignalStuff819xUsb(struct sk_buff *skb,
       struct ieee80211_rx_stats *pstats,
       struct rx_drvinfo_819x_usb *pdrvinfo)
{



 struct rtl8192_rx_info *info = (struct rtl8192_rx_info *)skb->cb;
 struct net_device *dev = info->dev;
 struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 bool bpacket_match_bssid, bpacket_toself;
 bool bPacketBeacon = 0, bToSelfBA = 0;
 static struct ieee80211_rx_stats previous_stats;
 struct rtl_80211_hdr_3addr *hdr;
 u16 fc, type;



 u8 *tmp_buf;
 u8 *praddr;


 tmp_buf = (u8 *)skb->data;

 hdr = (struct rtl_80211_hdr_3addr *)tmp_buf;
 fc = le16_to_cpu(hdr->frame_ctl);
 type = WLAN_FC_GET_TYPE(fc);
 praddr = hdr->addr1;


 bpacket_match_bssid = (type != IEEE80211_FTYPE_CTL) &&
          (ether_addr_equal(priv->ieee80211->current_network.bssid, (fc & IEEE80211_FCTL_TODS) ? hdr->addr1 : (fc & IEEE80211_FCTL_FROMDS) ? hdr->addr2 : hdr->addr3))
          && (!pstats->bHwError) && (!pstats->bCRC) && (!pstats->bICV);
 bpacket_toself = bpacket_match_bssid &
     (ether_addr_equal(praddr, priv->ieee80211->dev->dev_addr));

 if (WLAN_FC_GET_FRAMETYPE(fc) == IEEE80211_STYPE_BEACON)
  bPacketBeacon = 1;
 if (WLAN_FC_GET_FRAMETYPE(fc) == IEEE80211_STYPE_BLOCKACK) {
  if ((ether_addr_equal(praddr, dev->dev_addr)))
   bToSelfBA = 1;
 }



 if (bpacket_match_bssid)
  priv->stats.numpacket_matchbssid++;
 if (bpacket_toself)
  priv->stats.numpacket_toself++;




 rtl8192_process_phyinfo(priv, tmp_buf, &previous_stats, pstats);
 rtl8192_query_rxphystatus(priv, pstats, pdrvinfo, &previous_stats,
      bpacket_match_bssid, bpacket_toself,
      bPacketBeacon, bToSelfBA);
 rtl8192_record_rxdesc_forlateruse(pstats, &previous_stats);
}
