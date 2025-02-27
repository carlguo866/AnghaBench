
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct crypto_platform_data {TYPE_1__* dma_slave; } ;
struct TYPE_6__ {void* chan; } ;
struct TYPE_5__ {void* chan; } ;
struct atmel_aes_dev {int dev; TYPE_3__ src; TYPE_2__ dst; } ;
struct at_dma_slave {int dummy; } ;
typedef int dma_cap_mask_t ;
struct TYPE_4__ {struct at_dma_slave txdata; struct at_dma_slave rxdata; } ;


 int DMA_SLAVE ;
 int ENODEV ;
 int atmel_aes_filter ;
 int dev_warn (int ,char*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_release_channel (void*) ;
 void* dma_request_slave_channel_compat (int ,int ,struct at_dma_slave*,int ,char*) ;

__attribute__((used)) static int atmel_aes_dma_init(struct atmel_aes_dev *dd,
         struct crypto_platform_data *pdata)
{
 struct at_dma_slave *slave;
 dma_cap_mask_t mask;

 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);


 slave = &pdata->dma_slave->rxdata;
 dd->src.chan = dma_request_slave_channel_compat(mask, atmel_aes_filter,
       slave, dd->dev, "tx");
 if (!dd->src.chan)
  goto err_dma_in;

 slave = &pdata->dma_slave->txdata;
 dd->dst.chan = dma_request_slave_channel_compat(mask, atmel_aes_filter,
       slave, dd->dev, "rx");
 if (!dd->dst.chan)
  goto err_dma_out;

 return 0;

err_dma_out:
 dma_release_channel(dd->src.chan);
err_dma_in:
 dev_warn(dd->dev, "no DMA channel available\n");
 return -ENODEV;
}
