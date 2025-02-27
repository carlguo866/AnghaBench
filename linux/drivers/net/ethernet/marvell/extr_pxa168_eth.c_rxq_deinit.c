
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pxa168_eth_private {int rx_ring_size; scalar_t__* rx_skb; int rx_desc_dma; scalar_t__ p_rx_desc_area; int rx_desc_area_size; TYPE_2__* dev; scalar_t__ rx_desc_count; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int dev_kfree_skb (scalar_t__) ;
 int dma_free_coherent (int ,int ,scalar_t__,int ) ;
 int kfree (scalar_t__*) ;
 int netdev_err (struct net_device*,char*,scalar_t__) ;
 struct pxa168_eth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void rxq_deinit(struct net_device *dev)
{
 struct pxa168_eth_private *pep = netdev_priv(dev);
 int curr;


 for (curr = 0; pep->rx_desc_count && curr < pep->rx_ring_size; curr++) {
  if (pep->rx_skb[curr]) {
   dev_kfree_skb(pep->rx_skb[curr]);
   pep->rx_desc_count--;
  }
 }
 if (pep->rx_desc_count)
  netdev_err(dev, "Error in freeing Rx Ring. %d skb's still\n",
      pep->rx_desc_count);

 if (pep->p_rx_desc_area)
  dma_free_coherent(pep->dev->dev.parent, pep->rx_desc_area_size,
      pep->p_rx_desc_area, pep->rx_desc_dma);
 kfree(pep->rx_skb);
}
