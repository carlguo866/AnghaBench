
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct netcp_stats {int tx_dropped; } ;
struct netcp_intf {int tx_pause_threshold; int ndev_dev; int tx_pool; struct netcp_stats stats; } ;
struct net_device {int dummy; } ;
struct knav_dma_desc {int dummy; } ;


 int ENOBUFS ;
 scalar_t__ NETCP_MIN_PACKET_SIZE ;
 int NETDEV_TX_OK ;
 int dev_dbg (int ,char*,int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dev_warn (int ,char*,int) ;
 int knav_pool_count (int ) ;
 int netcp_free_tx_desc_chain (struct netcp_intf*,struct knav_dma_desc*,int) ;
 struct knav_dma_desc* netcp_tx_map_skb (struct sk_buff*,struct netcp_intf*) ;
 int netcp_tx_submit_skb (struct netcp_intf*,struct sk_buff*,struct knav_dma_desc*) ;
 struct netcp_intf* netdev_priv (struct net_device*) ;
 int netif_stop_subqueue (struct net_device*,int) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int skb_padto (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int netcp_ndo_start_xmit(struct sk_buff *skb, struct net_device *ndev)
{
 struct netcp_intf *netcp = netdev_priv(ndev);
 struct netcp_stats *tx_stats = &netcp->stats;
 int subqueue = skb_get_queue_mapping(skb);
 struct knav_dma_desc *desc;
 int desc_count, ret = 0;

 if (unlikely(skb->len <= 0)) {
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }

 if (unlikely(skb->len < NETCP_MIN_PACKET_SIZE)) {
  ret = skb_padto(skb, NETCP_MIN_PACKET_SIZE);
  if (ret < 0) {

   dev_warn(netcp->ndev_dev, "padding failed (%d), packet dropped\n",
     ret);
   tx_stats->tx_dropped++;
   return ret;
  }
  skb->len = NETCP_MIN_PACKET_SIZE;
 }

 desc = netcp_tx_map_skb(skb, netcp);
 if (unlikely(!desc)) {
  netif_stop_subqueue(ndev, subqueue);
  ret = -ENOBUFS;
  goto drop;
 }

 ret = netcp_tx_submit_skb(netcp, skb, desc);
 if (ret)
  goto drop;


 desc_count = knav_pool_count(netcp->tx_pool);
 if (desc_count < netcp->tx_pause_threshold) {
  dev_dbg(netcp->ndev_dev, "pausing tx, count(%d)\n", desc_count);
  netif_stop_subqueue(ndev, subqueue);
 }
 return NETDEV_TX_OK;

drop:
 tx_stats->tx_dropped++;
 if (desc)
  netcp_free_tx_desc_chain(netcp, desc, sizeof(*desc));
 dev_kfree_skb(skb);
 return ret;
}
