
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stmmac_priv {int dummy; } ;


 int DMA_TX_SIZE ;
 int stmmac_free_tx_buffer (struct stmmac_priv*,int ,int) ;

__attribute__((used)) static void dma_free_tx_skbufs(struct stmmac_priv *priv, u32 queue)
{
 int i;

 for (i = 0; i < DMA_TX_SIZE; i++)
  stmmac_free_tx_buffer(priv, queue, i);
}
