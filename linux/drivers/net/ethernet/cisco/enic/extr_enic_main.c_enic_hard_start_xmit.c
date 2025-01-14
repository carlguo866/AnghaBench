
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_wq {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct enic {unsigned int wq_count; int * wq_lock; struct vnic_wq* wq; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {scalar_t__ gso_size; scalar_t__ nr_frags; } ;


 scalar_t__ ENIC_DESC_MAX_SPLITS ;
 scalar_t__ ENIC_NON_TSO_MAX_DESC ;
 scalar_t__ MAX_SKB_FRAGS ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int enic_queue_wq_skb (struct enic*,struct vnic_wq*,struct sk_buff*) ;
 int netdev_err (struct net_device*,char*) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,unsigned int) ;
 struct enic* netdev_priv (struct net_device*) ;
 int netdev_xmit_more () ;
 int netif_tx_stop_queue (struct netdev_queue*) ;
 scalar_t__ netif_xmit_stopped (struct netdev_queue*) ;
 unsigned int skb_get_queue_mapping (struct sk_buff*) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ vnic_wq_desc_avail (struct vnic_wq*) ;
 int vnic_wq_doorbell (struct vnic_wq*) ;

__attribute__((used)) static netdev_tx_t enic_hard_start_xmit(struct sk_buff *skb,
 struct net_device *netdev)
{
 struct enic *enic = netdev_priv(netdev);
 struct vnic_wq *wq;
 unsigned int txq_map;
 struct netdev_queue *txq;

 if (skb->len <= 0) {
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }

 txq_map = skb_get_queue_mapping(skb) % enic->wq_count;
 wq = &enic->wq[txq_map];
 txq = netdev_get_tx_queue(netdev, txq_map);






 if (skb_shinfo(skb)->gso_size == 0 &&
     skb_shinfo(skb)->nr_frags + 1 > ENIC_NON_TSO_MAX_DESC &&
     skb_linearize(skb)) {
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }

 spin_lock(&enic->wq_lock[txq_map]);

 if (vnic_wq_desc_avail(wq) <
     skb_shinfo(skb)->nr_frags + ENIC_DESC_MAX_SPLITS) {
  netif_tx_stop_queue(txq);

  netdev_err(netdev, "BUG! Tx ring full when queue awake!\n");
  spin_unlock(&enic->wq_lock[txq_map]);
  return NETDEV_TX_BUSY;
 }

 enic_queue_wq_skb(enic, wq, skb);

 if (vnic_wq_desc_avail(wq) < MAX_SKB_FRAGS + ENIC_DESC_MAX_SPLITS)
  netif_tx_stop_queue(txq);
 skb_tx_timestamp(skb);
 if (!netdev_xmit_more() || netif_xmit_stopped(txq))
  vnic_wq_doorbell(wq);

 spin_unlock(&enic->wq_lock[txq_map]);

 return NETDEV_TX_OK;
}
