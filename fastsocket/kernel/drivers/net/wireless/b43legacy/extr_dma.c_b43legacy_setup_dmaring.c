
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43legacy_wldev {TYPE_1__* dev; } ;
struct b43legacy_txhdr_fw3 {int dummy; } ;
struct b43legacy_dmaring {int type; int nr_slots; int index; int tx; int current_slot; struct b43legacy_dmaring* meta; struct b43legacy_dmaring* txhdr_cache; int last_injected_overflow; int frameoffset; int rx_buffersize; int mmio_base; struct b43legacy_wldev* dev; } ;
struct b43legacy_dmadesc_meta {int dummy; } ;
typedef enum b43legacy_dmatype { ____Placeholder_b43legacy_dmatype } b43legacy_dmatype ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dma_dev; } ;


 int B43legacy_DMA0_RX_BUFFERSIZE ;
 int B43legacy_DMA0_RX_FRAMEOFFSET ;
 int B43legacy_DMA3_RX_BUFFERSIZE ;
 int B43legacy_DMA3_RX_FRAMEOFFSET ;
 int B43legacy_RXRING_SLOTS ;
 int B43legacy_TXRING_SLOTS ;
 int B43legacy_WARN_ON (int) ;
 int DMA_TO_DEVICE ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int alloc_ringmemory (struct b43legacy_dmaring*) ;
 scalar_t__ b43legacy_dma_mapping_error (struct b43legacy_dmaring*,int ,int,int) ;
 int b43legacy_dmacontroller_base (int,int) ;
 int dma_map_single (int ,struct b43legacy_dmaring*,int,int ) ;
 int dma_unmap_single (int ,int ,int,int ) ;
 int dmacontroller_setup (struct b43legacy_dmaring*) ;
 int free_ringmemory (struct b43legacy_dmaring*) ;
 int jiffies ;
 void* kcalloc (int,int,int) ;
 int kfree (struct b43legacy_dmaring*) ;
 struct b43legacy_dmaring* kzalloc (int,int) ;

__attribute__((used)) static
struct b43legacy_dmaring *b43legacy_setup_dmaring(struct b43legacy_wldev *dev,
        int controller_index,
        int for_tx,
        enum b43legacy_dmatype type)
{
 struct b43legacy_dmaring *ring;
 int err;
 int nr_slots;
 dma_addr_t dma_test;

 ring = kzalloc(sizeof(*ring), GFP_KERNEL);
 if (!ring)
  goto out;
 ring->type = type;
 ring->dev = dev;

 nr_slots = B43legacy_RXRING_SLOTS;
 if (for_tx)
  nr_slots = B43legacy_TXRING_SLOTS;

 ring->meta = kcalloc(nr_slots, sizeof(struct b43legacy_dmadesc_meta),
        GFP_KERNEL);
 if (!ring->meta)
  goto err_kfree_ring;
 if (for_tx) {
  ring->txhdr_cache = kcalloc(nr_slots,
     sizeof(struct b43legacy_txhdr_fw3),
     GFP_KERNEL);
  if (!ring->txhdr_cache)
   goto err_kfree_meta;


  dma_test = dma_map_single(dev->dev->dma_dev, ring->txhdr_cache,
           sizeof(struct b43legacy_txhdr_fw3),
           DMA_TO_DEVICE);

  if (b43legacy_dma_mapping_error(ring, dma_test,
     sizeof(struct b43legacy_txhdr_fw3), 1)) {

   kfree(ring->txhdr_cache);
   ring->txhdr_cache = kcalloc(nr_slots,
     sizeof(struct b43legacy_txhdr_fw3),
     GFP_KERNEL | GFP_DMA);
   if (!ring->txhdr_cache)
    goto err_kfree_meta;

   dma_test = dma_map_single(dev->dev->dma_dev,
     ring->txhdr_cache,
     sizeof(struct b43legacy_txhdr_fw3),
     DMA_TO_DEVICE);

   if (b43legacy_dma_mapping_error(ring, dma_test,
     sizeof(struct b43legacy_txhdr_fw3), 1))
    goto err_kfree_txhdr_cache;
  }

  dma_unmap_single(dev->dev->dma_dev, dma_test,
     sizeof(struct b43legacy_txhdr_fw3),
     DMA_TO_DEVICE);
 }

 ring->nr_slots = nr_slots;
 ring->mmio_base = b43legacy_dmacontroller_base(type, controller_index);
 ring->index = controller_index;
 if (for_tx) {
  ring->tx = 1;
  ring->current_slot = -1;
 } else {
  if (ring->index == 0) {
   ring->rx_buffersize = B43legacy_DMA0_RX_BUFFERSIZE;
   ring->frameoffset = B43legacy_DMA0_RX_FRAMEOFFSET;
  } else if (ring->index == 3) {
   ring->rx_buffersize = B43legacy_DMA3_RX_BUFFERSIZE;
   ring->frameoffset = B43legacy_DMA3_RX_FRAMEOFFSET;
  } else
   B43legacy_WARN_ON(1);
 }




 err = alloc_ringmemory(ring);
 if (err)
  goto err_kfree_txhdr_cache;
 err = dmacontroller_setup(ring);
 if (err)
  goto err_free_ringmemory;

out:
 return ring;

err_free_ringmemory:
 free_ringmemory(ring);
err_kfree_txhdr_cache:
 kfree(ring->txhdr_cache);
err_kfree_meta:
 kfree(ring->meta);
err_kfree_ring:
 kfree(ring);
 ring = ((void*)0);
 goto out;
}
