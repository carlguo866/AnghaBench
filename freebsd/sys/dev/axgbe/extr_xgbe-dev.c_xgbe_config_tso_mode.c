
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int channel_count; struct xgbe_channel* channel; } ;
struct xgbe_channel {int tx_ring; } ;


 int DMA_CH_TCR ;
 int TSE ;
 int XGMAC_DMA_IOWRITE_BITS (struct xgbe_channel*,int ,int ,int) ;

__attribute__((used)) static void xgbe_config_tso_mode(struct xgbe_prv_data *pdata)
{
 struct xgbe_channel *channel;
 unsigned int i;

 channel = pdata->channel;
 for (i = 0; i < pdata->channel_count; i++, channel++) {
  if (!channel->tx_ring)
   break;

  XGMAC_DMA_IOWRITE_BITS(channel, DMA_CH_TCR, TSE, 1);
 }
}
