
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iavf_tx_desc {int dummy; } ;
struct iavf_tx_buffer {int dummy; } ;
struct TYPE_2__ {int prev_pkt_ctr; } ;
struct iavf_ring {int count; int size; int * tx_bi; TYPE_1__ tx_stats; scalar_t__ next_to_clean; scalar_t__ next_to_use; int desc; int dma; struct device* dev; } ;
struct device {int dummy; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WARN_ON (int *) ;
 int dev_info (struct device*,char*,int) ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;

int iavf_setup_tx_descriptors(struct iavf_ring *tx_ring)
{
 struct device *dev = tx_ring->dev;
 int bi_size;

 if (!dev)
  return -ENOMEM;


 WARN_ON(tx_ring->tx_bi);
 bi_size = sizeof(struct iavf_tx_buffer) * tx_ring->count;
 tx_ring->tx_bi = kzalloc(bi_size, GFP_KERNEL);
 if (!tx_ring->tx_bi)
  goto err;


 tx_ring->size = tx_ring->count * sizeof(struct iavf_tx_desc);
 tx_ring->size = ALIGN(tx_ring->size, 4096);
 tx_ring->desc = dma_alloc_coherent(dev, tx_ring->size,
        &tx_ring->dma, GFP_KERNEL);
 if (!tx_ring->desc) {
  dev_info(dev, "Unable to allocate memory for the Tx descriptor ring, size=%d\n",
    tx_ring->size);
  goto err;
 }

 tx_ring->next_to_use = 0;
 tx_ring->next_to_clean = 0;
 tx_ring->tx_stats.prev_pkt_ctr = -1;
 return 0;

err:
 kfree(tx_ring->tx_bi);
 tx_ring->tx_bi = ((void*)0);
 return -ENOMEM;
}
