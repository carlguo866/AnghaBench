
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct bcmgenet_rx_ring {unsigned int index; unsigned int size; unsigned int read_ptr; unsigned int cb_ptr; unsigned int end_ptr; int napi; scalar_t__ c_index; scalar_t__ cbs; int int_disable; int int_enable; struct bcmgenet_priv* priv; } ;
struct bcmgenet_priv {int dev; scalar_t__ rx_cbs; struct bcmgenet_rx_ring* rx_rings; } ;


 unsigned int DESC_INDEX ;
 int DMA_END_ADDR ;
 unsigned int DMA_FC_THRESH_HI ;
 unsigned int DMA_FC_THRESH_LO ;
 int DMA_RING_BUF_SIZE ;
 unsigned int DMA_RING_SIZE_SHIFT ;
 int DMA_START_ADDR ;
 unsigned int DMA_XOFF_THRESHOLD_SHIFT ;
 int NAPI_POLL_WEIGHT ;
 int RDMA_CONS_INDEX ;
 int RDMA_PROD_INDEX ;
 int RDMA_READ_PTR ;
 int RDMA_WRITE_PTR ;
 int RDMA_XON_XOFF_THRESH ;
 unsigned int RX_BUF_LENGTH ;
 unsigned int WORDS_PER_BD (struct bcmgenet_priv*) ;
 int bcmgenet_alloc_rx_buffers (struct bcmgenet_priv*,struct bcmgenet_rx_ring*) ;
 int bcmgenet_dim_work ;
 int bcmgenet_init_dim (struct bcmgenet_rx_ring*,int ) ;
 int bcmgenet_init_rx_coalesce (struct bcmgenet_rx_ring*) ;
 int bcmgenet_rdma_ring_writel (struct bcmgenet_priv*,unsigned int,unsigned int,int ) ;
 int bcmgenet_rx_poll ;
 int bcmgenet_rx_ring16_int_disable ;
 int bcmgenet_rx_ring16_int_enable ;
 int bcmgenet_rx_ring_int_disable ;
 int bcmgenet_rx_ring_int_enable ;
 int netif_napi_add (int ,int *,int ,int ) ;

__attribute__((used)) static int bcmgenet_init_rx_ring(struct bcmgenet_priv *priv,
     unsigned int index, unsigned int size,
     unsigned int start_ptr, unsigned int end_ptr)
{
 struct bcmgenet_rx_ring *ring = &priv->rx_rings[index];
 u32 words_per_bd = WORDS_PER_BD(priv);
 int ret;

 ring->priv = priv;
 ring->index = index;
 if (index == DESC_INDEX) {
  ring->int_enable = bcmgenet_rx_ring16_int_enable;
  ring->int_disable = bcmgenet_rx_ring16_int_disable;
 } else {
  ring->int_enable = bcmgenet_rx_ring_int_enable;
  ring->int_disable = bcmgenet_rx_ring_int_disable;
 }
 ring->cbs = priv->rx_cbs + start_ptr;
 ring->size = size;
 ring->c_index = 0;
 ring->read_ptr = start_ptr;
 ring->cb_ptr = start_ptr;
 ring->end_ptr = end_ptr - 1;

 ret = bcmgenet_alloc_rx_buffers(priv, ring);
 if (ret)
  return ret;

 bcmgenet_init_dim(ring, bcmgenet_dim_work);
 bcmgenet_init_rx_coalesce(ring);


 netif_napi_add(priv->dev, &ring->napi, bcmgenet_rx_poll,
         NAPI_POLL_WEIGHT);

 bcmgenet_rdma_ring_writel(priv, index, 0, RDMA_PROD_INDEX);
 bcmgenet_rdma_ring_writel(priv, index, 0, RDMA_CONS_INDEX);
 bcmgenet_rdma_ring_writel(priv, index,
      ((size << DMA_RING_SIZE_SHIFT) |
       RX_BUF_LENGTH), DMA_RING_BUF_SIZE);
 bcmgenet_rdma_ring_writel(priv, index,
      (DMA_FC_THRESH_LO <<
       DMA_XOFF_THRESHOLD_SHIFT) |
       DMA_FC_THRESH_HI, RDMA_XON_XOFF_THRESH);


 bcmgenet_rdma_ring_writel(priv, index, start_ptr * words_per_bd,
      DMA_START_ADDR);
 bcmgenet_rdma_ring_writel(priv, index, start_ptr * words_per_bd,
      RDMA_READ_PTR);
 bcmgenet_rdma_ring_writel(priv, index, start_ptr * words_per_bd,
      RDMA_WRITE_PTR);
 bcmgenet_rdma_ring_writel(priv, index, end_ptr * words_per_bd - 1,
      DMA_END_ADDR);

 return ret;
}
