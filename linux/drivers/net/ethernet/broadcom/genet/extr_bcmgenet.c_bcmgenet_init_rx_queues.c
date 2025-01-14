
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct bcmgenet_priv {TYPE_1__* hw_params; } ;
struct TYPE_2__ {int rx_queues; int rx_bds_per_q; } ;


 int DESC_INDEX ;
 int DMA_CTRL ;
 int DMA_EN ;
 int DMA_RING_BUF_EN_SHIFT ;
 int DMA_RING_CFG ;
 int GENET_Q16_RX_BD_CNT ;
 int TOTAL_DESC ;
 int bcmgenet_init_rx_ring (struct bcmgenet_priv*,int,int,int,int) ;
 int bcmgenet_rdma_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_rdma_writel (struct bcmgenet_priv*,int,int ) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bcmgenet_init_rx_queues(struct net_device *dev)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);
 u32 i;
 u32 dma_enable;
 u32 dma_ctrl;
 u32 ring_cfg;
 int ret;

 dma_ctrl = bcmgenet_rdma_readl(priv, DMA_CTRL);
 dma_enable = dma_ctrl & DMA_EN;
 dma_ctrl &= ~DMA_EN;
 bcmgenet_rdma_writel(priv, dma_ctrl, DMA_CTRL);

 dma_ctrl = 0;
 ring_cfg = 0;


 for (i = 0; i < priv->hw_params->rx_queues; i++) {
  ret = bcmgenet_init_rx_ring(priv, i,
         priv->hw_params->rx_bds_per_q,
         i * priv->hw_params->rx_bds_per_q,
         (i + 1) *
         priv->hw_params->rx_bds_per_q);
  if (ret)
   return ret;

  ring_cfg |= (1 << i);
  dma_ctrl |= (1 << (i + DMA_RING_BUF_EN_SHIFT));
 }


 ret = bcmgenet_init_rx_ring(priv, DESC_INDEX, GENET_Q16_RX_BD_CNT,
        priv->hw_params->rx_queues *
        priv->hw_params->rx_bds_per_q,
        TOTAL_DESC);
 if (ret)
  return ret;

 ring_cfg |= (1 << DESC_INDEX);
 dma_ctrl |= (1 << (DESC_INDEX + DMA_RING_BUF_EN_SHIFT));


 bcmgenet_rdma_writel(priv, ring_cfg, DMA_RING_CFG);


 if (dma_enable)
  dma_ctrl |= DMA_EN;
 bcmgenet_rdma_writel(priv, dma_ctrl, DMA_CTRL);

 return 0;
}
