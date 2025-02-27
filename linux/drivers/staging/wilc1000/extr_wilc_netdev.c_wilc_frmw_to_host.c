
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char u8 ;
typedef unsigned int u32 ;
struct TYPE_2__ {unsigned int rx_bytes; int rx_packets; } ;
struct wilc_vif {TYPE_1__ netstats; } ;
struct wilc {int dummy; } ;
struct sk_buff {int ip_summed; int protocol; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int CHECKSUM_UNNECESSARY ;
 struct sk_buff* dev_alloc_skb (unsigned int) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 struct net_device* get_if_handler (struct wilc*,unsigned char*) ;
 int netdev_dbg (struct net_device*,char*,int) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int skb_put_data (struct sk_buff*,unsigned char*,unsigned int) ;

void wilc_frmw_to_host(struct wilc *wilc, u8 *buff, u32 size,
         u32 pkt_offset)
{
 unsigned int frame_len = 0;
 int stats;
 unsigned char *buff_to_send = ((void*)0);
 struct sk_buff *skb;
 struct net_device *wilc_netdev;
 struct wilc_vif *vif;

 if (!wilc)
  return;

 wilc_netdev = get_if_handler(wilc, buff);
 if (!wilc_netdev)
  return;

 buff += pkt_offset;
 vif = netdev_priv(wilc_netdev);

 if (size > 0) {
  frame_len = size;
  buff_to_send = buff;

  skb = dev_alloc_skb(frame_len);
  if (!skb)
   return;

  skb->dev = wilc_netdev;

  skb_put_data(skb, buff_to_send, frame_len);

  skb->protocol = eth_type_trans(skb, wilc_netdev);
  vif->netstats.rx_packets++;
  vif->netstats.rx_bytes += frame_len;
  skb->ip_summed = CHECKSUM_UNNECESSARY;
  stats = netif_rx(skb);
  netdev_dbg(wilc_netdev, "netif_rx ret value is: %d\n", stats);
 }
}
