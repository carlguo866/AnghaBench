
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__ len; unsigned char* data; } ;
struct TYPE_2__ {int tx_bytes; int tx_dropped; int tx_errors; } ;
struct net_device {int const* dev_addr; TYPE_1__ stats; int trans_start; } ;
struct ieee80211_hdr {int frame_control; int addr4; int addr3; int addr2; int addr1; scalar_t__ seq_ctrl; scalar_t__ duration_id; } ;
struct atmel_private {scalar_t__ station_state; scalar_t__ operating_mode; int const* BSSID; int const* CurrentBSSID; int timerlock; int irqlock; int tx_buff_tail; scalar_t__ use_wpa; scalar_t__ wep_is_on; scalar_t__ card; int (* present_callback ) (scalar_t__) ;} ;
typedef int netdev_tx_t ;


 int DATA_FRAME_WS_HEADER_SIZE ;
 scalar_t__ ETH_ZLEN ;
 int IEEE80211_FCTL_PROTECTED ;
 int IEEE80211_FCTL_TODS ;
 int IEEE80211_FTYPE_DATA ;
 scalar_t__ IW_MODE_ADHOC ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ STATION_STATE_READY ;
 int TX_PACKET_TYPE_DATA ;
 int atmel_copy_to_card (struct net_device*,int,unsigned char*,int) ;
 int cpu_to_le16 (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int find_tx_buff (struct atmel_private*,int) ;
 int jiffies ;
 int memcpy (int *,int const*,int) ;
 struct atmel_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_copy_from_linear_data (struct sk_buff*,int *,int) ;
 int spin_lock_bh (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_bh (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (scalar_t__) ;
 int tx_update_descriptor (struct atmel_private*,int,int,int,int ) ;

__attribute__((used)) static netdev_tx_t start_tx(struct sk_buff *skb, struct net_device *dev)
{
 static const u8 SNAP_RFC1024[6] = { 0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00 };
 struct atmel_private *priv = netdev_priv(dev);
 struct ieee80211_hdr header;
 unsigned long flags;
 u16 buff, frame_ctl, len = (ETH_ZLEN < skb->len) ? skb->len : ETH_ZLEN;

 if (priv->card && priv->present_callback &&
     !(*priv->present_callback)(priv->card)) {
  dev->stats.tx_errors++;
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }

 if (priv->station_state != STATION_STATE_READY) {
  dev->stats.tx_errors++;
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }


 spin_lock_bh(&priv->timerlock);

 spin_lock_irqsave(&priv->irqlock, flags);







 if (!(buff = find_tx_buff(priv, len + 18))) {
  dev->stats.tx_dropped++;
  spin_unlock_irqrestore(&priv->irqlock, flags);
  spin_unlock_bh(&priv->timerlock);
  netif_stop_queue(dev);
  return NETDEV_TX_BUSY;
 }

 frame_ctl = IEEE80211_FTYPE_DATA;
 header.duration_id = 0;
 header.seq_ctrl = 0;
 if (priv->wep_is_on)
  frame_ctl |= IEEE80211_FCTL_PROTECTED;
 if (priv->operating_mode == IW_MODE_ADHOC) {
  skb_copy_from_linear_data(skb, &header.addr1, 6);
  memcpy(&header.addr2, dev->dev_addr, 6);
  memcpy(&header.addr3, priv->BSSID, 6);
 } else {
  frame_ctl |= IEEE80211_FCTL_TODS;
  memcpy(&header.addr1, priv->CurrentBSSID, 6);
  memcpy(&header.addr2, dev->dev_addr, 6);
  skb_copy_from_linear_data(skb, &header.addr3, 6);
 }

 if (priv->use_wpa)
  memcpy(&header.addr4, SNAP_RFC1024, 6);

 header.frame_control = cpu_to_le16(frame_ctl);

 atmel_copy_to_card(dev, buff, (unsigned char *)&header, DATA_FRAME_WS_HEADER_SIZE);

 atmel_copy_to_card(dev, buff + DATA_FRAME_WS_HEADER_SIZE, skb->data + 12, len - 12);
 priv->tx_buff_tail += len - 12 + DATA_FRAME_WS_HEADER_SIZE;


 tx_update_descriptor(priv, *(skb->data) & 0x01, len + 18, buff, TX_PACKET_TYPE_DATA);
 dev->trans_start = jiffies;
 dev->stats.tx_bytes += len;

 spin_unlock_irqrestore(&priv->irqlock, flags);
 spin_unlock_bh(&priv->timerlock);
 dev_kfree_skb(skb);

 return NETDEV_TX_OK;
}
