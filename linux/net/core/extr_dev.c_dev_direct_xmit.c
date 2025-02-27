
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {struct net_device* dev; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int tx_dropped; } ;


 int HARD_TX_LOCK (struct net_device*,struct netdev_queue*,int ) ;
 int HARD_TX_UNLOCK (struct net_device*,struct netdev_queue*) ;
 int NETDEV_TX_BUSY ;
 int NET_XMIT_DROP ;
 int atomic_long_inc (int *) ;
 int dev_xmit_complete (int) ;
 int kfree_skb (struct sk_buff*) ;
 int kfree_skb_list (struct sk_buff*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int netdev_start_xmit (struct sk_buff*,struct net_device*,struct netdev_queue*,int) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_xmit_frozen_or_drv_stopped (struct netdev_queue*) ;
 struct netdev_queue* skb_get_tx_queue (struct net_device*,struct sk_buff*) ;
 int skb_set_queue_mapping (struct sk_buff*,int ) ;
 int smp_processor_id () ;
 scalar_t__ unlikely (int) ;
 struct sk_buff* validate_xmit_skb_list (struct sk_buff*,struct net_device*,int*) ;

int dev_direct_xmit(struct sk_buff *skb, u16 queue_id)
{
 struct net_device *dev = skb->dev;
 struct sk_buff *orig_skb = skb;
 struct netdev_queue *txq;
 int ret = NETDEV_TX_BUSY;
 bool again = 0;

 if (unlikely(!netif_running(dev) ||
       !netif_carrier_ok(dev)))
  goto drop;

 skb = validate_xmit_skb_list(skb, dev, &again);
 if (skb != orig_skb)
  goto drop;

 skb_set_queue_mapping(skb, queue_id);
 txq = skb_get_tx_queue(dev, skb);

 local_bh_disable();

 HARD_TX_LOCK(dev, txq, smp_processor_id());
 if (!netif_xmit_frozen_or_drv_stopped(txq))
  ret = netdev_start_xmit(skb, dev, txq, 0);
 HARD_TX_UNLOCK(dev, txq);

 local_bh_enable();

 if (!dev_xmit_complete(ret))
  kfree_skb(skb);

 return ret;
drop:
 atomic_long_inc(&dev->tx_dropped);
 kfree_skb_list(skb);
 return NET_XMIT_DROP;
}
