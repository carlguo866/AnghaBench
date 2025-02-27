
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
struct ixgbe_tx_buffer {int dummy; } ;
struct ixgbe_ring {int count; int size; int * tx_buffer_info; scalar_t__ next_to_clean; scalar_t__ next_to_use; void* desc; int dma; TYPE_1__* q_vector; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int numa_node; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 int dev_to_node (struct device*) ;
 void* dma_alloc_coherent (struct device*,int,int *,int ) ;
 int set_dev_node (struct device*,int) ;
 int vfree (int *) ;
 int * vzalloc (int) ;
 int * vzalloc_node (int,int) ;

int ixgbe_setup_tx_resources(struct ixgbe_ring *tx_ring)
{
 struct device *dev = tx_ring->dev;
 int orig_node = dev_to_node(dev);
 int numa_node = -1;
 int size;

 size = sizeof(struct ixgbe_tx_buffer) * tx_ring->count;

 if (tx_ring->q_vector)
  numa_node = tx_ring->q_vector->numa_node;

 tx_ring->tx_buffer_info = vzalloc_node(size, numa_node);
 if (!tx_ring->tx_buffer_info)
  tx_ring->tx_buffer_info = vzalloc(size);
 if (!tx_ring->tx_buffer_info)
  goto err;


 tx_ring->size = tx_ring->count * sizeof(union ixgbe_adv_tx_desc);
 tx_ring->size = ALIGN(tx_ring->size, 4096);

 set_dev_node(dev, numa_node);
 tx_ring->desc = dma_alloc_coherent(dev,
        tx_ring->size,
        &tx_ring->dma,
        GFP_KERNEL);
 set_dev_node(dev, orig_node);
 if (!tx_ring->desc)
  tx_ring->desc = dma_alloc_coherent(dev, tx_ring->size,
         &tx_ring->dma, GFP_KERNEL);
 if (!tx_ring->desc)
  goto err;

 tx_ring->next_to_use = 0;
 tx_ring->next_to_clean = 0;
 return 0;

err:
 vfree(tx_ring->tx_buffer_info);
 tx_ring->tx_buffer_info = ((void*)0);
 dev_err(dev, "Unable to allocate memory for the Tx descriptor ring\n");
 return -ENOMEM;
}
