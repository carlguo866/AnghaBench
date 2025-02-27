
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int phydev; int irq; } ;
struct device {int dummy; } ;
struct bcm_enet_priv {int rx_ring_size; scalar_t__ has_phy; int irq_rx; int irq_tx; int tx_desc_dma; struct bcm_enet_desc* tx_desc_cpu; int tx_desc_alloc_size; int rx_desc_dma; struct bcm_enet_desc* rx_desc_cpu; int rx_desc_alloc_size; int * tx_skb; int * rx_skb; int rx_skb_size; int rx_chan; int tx_chan; int mib_update_task; int rx_timeout; int napi; TYPE_1__* pdev; } ;
struct bcm_enet_desc {int address; } ;
struct TYPE_2__ {struct device dev; } ;


 int DMA_FROM_DEVICE ;
 int ENETDMAC_IRMASK ;
 int ENET_IRMASK_REG ;
 int bcm_enet_disable_dma (struct bcm_enet_priv*,int ) ;
 int bcm_enet_disable_mac (struct bcm_enet_priv*) ;
 int bcm_enet_tx_reclaim (struct net_device*,int) ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int dma_free_coherent (struct device*,int ,struct bcm_enet_desc*,int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int enet_dmac_writel (struct bcm_enet_priv*,int ,int ,int ) ;
 int enet_writel (struct bcm_enet_priv*,int ,int ) ;
 int free_irq (int ,struct net_device*) ;
 int kfree (int *) ;
 int kfree_skb (int ) ;
 int napi_disable (int *) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_disconnect (int ) ;
 int phy_stop (int ) ;

__attribute__((used)) static int bcm_enet_stop(struct net_device *dev)
{
 struct bcm_enet_priv *priv;
 struct device *kdev;
 int i;

 priv = netdev_priv(dev);
 kdev = &priv->pdev->dev;

 netif_stop_queue(dev);
 napi_disable(&priv->napi);
 if (priv->has_phy)
  phy_stop(dev->phydev);
 del_timer_sync(&priv->rx_timeout);


 enet_writel(priv, 0, ENET_IRMASK_REG);
 enet_dmac_writel(priv, 0, ENETDMAC_IRMASK, priv->rx_chan);
 enet_dmac_writel(priv, 0, ENETDMAC_IRMASK, priv->tx_chan);


 cancel_work_sync(&priv->mib_update_task);


 bcm_enet_disable_dma(priv, priv->tx_chan);
 bcm_enet_disable_dma(priv, priv->rx_chan);
 bcm_enet_disable_mac(priv);


 bcm_enet_tx_reclaim(dev, 1);


 for (i = 0; i < priv->rx_ring_size; i++) {
  struct bcm_enet_desc *desc;

  if (!priv->rx_skb[i])
   continue;

  desc = &priv->rx_desc_cpu[i];
  dma_unmap_single(kdev, desc->address, priv->rx_skb_size,
     DMA_FROM_DEVICE);
  kfree_skb(priv->rx_skb[i]);
 }


 kfree(priv->rx_skb);
 kfree(priv->tx_skb);
 dma_free_coherent(kdev, priv->rx_desc_alloc_size,
     priv->rx_desc_cpu, priv->rx_desc_dma);
 dma_free_coherent(kdev, priv->tx_desc_alloc_size,
     priv->tx_desc_cpu, priv->tx_desc_dma);
 free_irq(priv->irq_tx, dev);
 free_irq(priv->irq_rx, dev);
 free_irq(dev->irq, dev);


 if (priv->has_phy)
  phy_disconnect(dev->phydev);

 return 0;
}
