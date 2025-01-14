
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2_rx_ring_info {int ** rx_pg_desc_ring; int * rx_pg_desc_mapping; int * rx_pg_ring; int ** rx_desc_ring; int * rx_desc_mapping; int * rx_buf_ring; } ;
struct bnx2_napi {struct bnx2_rx_ring_info rx_ring; } ;
struct bnx2 {int num_rx_rings; int rx_max_ring; int rx_max_pg_ring; TYPE_1__* pdev; scalar_t__ rx_pg_ring_size; struct bnx2_napi* bnx2_napi; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RXBD_RING_SIZE ;
 int SW_RXBD_RING_SIZE ;
 int SW_RXPG_RING_SIZE ;
 void* dma_alloc_coherent (int *,int ,int *,int ) ;
 int memset (int *,int ,int) ;
 void* vmalloc (int) ;

__attribute__((used)) static int
bnx2_alloc_rx_mem(struct bnx2 *bp)
{
 int i;

 for (i = 0; i < bp->num_rx_rings; i++) {
  struct bnx2_napi *bnapi = &bp->bnx2_napi[i];
  struct bnx2_rx_ring_info *rxr = &bnapi->rx_ring;
  int j;

  rxr->rx_buf_ring =
   vmalloc(SW_RXBD_RING_SIZE * bp->rx_max_ring);
  if (rxr->rx_buf_ring == ((void*)0))
   return -ENOMEM;

  memset(rxr->rx_buf_ring, 0,
         SW_RXBD_RING_SIZE * bp->rx_max_ring);

  for (j = 0; j < bp->rx_max_ring; j++) {
   rxr->rx_desc_ring[j] =
    dma_alloc_coherent(&bp->pdev->dev,
         RXBD_RING_SIZE,
         &rxr->rx_desc_mapping[j],
         GFP_KERNEL);
   if (rxr->rx_desc_ring[j] == ((void*)0))
    return -ENOMEM;

  }

  if (bp->rx_pg_ring_size) {
   rxr->rx_pg_ring = vmalloc(SW_RXPG_RING_SIZE *
        bp->rx_max_pg_ring);
   if (rxr->rx_pg_ring == ((void*)0))
    return -ENOMEM;

   memset(rxr->rx_pg_ring, 0, SW_RXPG_RING_SIZE *
          bp->rx_max_pg_ring);
  }

  for (j = 0; j < bp->rx_max_pg_ring; j++) {
   rxr->rx_pg_desc_ring[j] =
    dma_alloc_coherent(&bp->pdev->dev,
         RXBD_RING_SIZE,
         &rxr->rx_pg_desc_mapping[j],
         GFP_KERNEL);
   if (rxr->rx_pg_desc_ring[j] == ((void*)0))
    return -ENOMEM;

  }
 }
 return 0;
}
