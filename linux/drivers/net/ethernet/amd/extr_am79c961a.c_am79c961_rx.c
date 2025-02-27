
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct sk_buff {int protocol; } ;
struct TYPE_2__ {int rx_bytes; int rx_dropped; int rx_packets; int rx_length_errors; int rx_crc_errors; int rx_frame_errors; int rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct dev_priv {int rxhdr; int rxtail; int* rxbuffer; } ;


 int RMD_CRC ;
 int RMD_ENP ;
 int RMD_ERR ;
 int RMD_FRAM ;
 int RMD_OWN ;
 int RMD_STP ;
 size_t RX_BUFFERS ;
 int am_readbuffer (struct net_device*,int,int ,int) ;
 int am_readword (struct net_device*,int) ;
 int am_writeword (struct net_device*,int,int) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int) ;
 int netif_rx (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static void
am79c961_rx(struct net_device *dev, struct dev_priv *priv)
{
 do {
  struct sk_buff *skb;
  u_int hdraddr;
  u_int pktaddr;
  u_int status;
  int len;

  hdraddr = priv->rxhdr + (priv->rxtail << 3);
  pktaddr = priv->rxbuffer[priv->rxtail];

  status = am_readword (dev, hdraddr + 2);
  if (status & RMD_OWN)
   break;

  priv->rxtail ++;
  if (priv->rxtail >= RX_BUFFERS)
   priv->rxtail = 0;

  if ((status & (RMD_ERR|RMD_STP|RMD_ENP)) != (RMD_STP|RMD_ENP)) {
   am_writeword (dev, hdraddr + 2, RMD_OWN);
   dev->stats.rx_errors++;
   if (status & RMD_ERR) {
    if (status & RMD_FRAM)
     dev->stats.rx_frame_errors++;
    if (status & RMD_CRC)
     dev->stats.rx_crc_errors++;
   } else if (status & RMD_STP)
    dev->stats.rx_length_errors++;
   continue;
  }

  len = am_readword(dev, hdraddr + 6);
  skb = netdev_alloc_skb(dev, len + 2);

  if (skb) {
   skb_reserve(skb, 2);

   am_readbuffer(dev, pktaddr, skb_put(skb, len), len);
   am_writeword(dev, hdraddr + 2, RMD_OWN);
   skb->protocol = eth_type_trans(skb, dev);
   netif_rx(skb);
   dev->stats.rx_bytes += len;
   dev->stats.rx_packets++;
  } else {
   am_writeword (dev, hdraddr + 2, RMD_OWN);
   dev->stats.rx_dropped++;
   break;
  }
 } while (1);
}
