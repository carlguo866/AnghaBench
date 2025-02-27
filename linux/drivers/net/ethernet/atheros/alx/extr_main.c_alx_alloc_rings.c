
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct alx_txd {int dummy; } ;
struct alx_rrd {int dummy; } ;
struct alx_rfd {int dummy; } ;
struct TYPE_7__ {int size; int virt; int dma; } ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct alx_priv {int tx_ringsz; int num_txq; int rx_ringsz; int dev; TYPE_4__** qnapi; TYPE_3__ descmem; TYPE_2__ hw; } ;
struct TYPE_8__ {int rxq; int txq; } ;
struct TYPE_5__ {int dev; } ;


 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int alx_alloc_rx_ring (struct alx_priv*,int ,int) ;
 int alx_alloc_tx_ring (struct alx_priv*,int ,int) ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int netdev_err (int ,char*) ;

__attribute__((used)) static int alx_alloc_rings(struct alx_priv *alx)
{
 int i, offset = 0;







 alx->descmem.size = sizeof(struct alx_txd) * alx->tx_ringsz *
       alx->num_txq +
       sizeof(struct alx_rrd) * alx->rx_ringsz +
       sizeof(struct alx_rfd) * alx->rx_ringsz;
 alx->descmem.virt = dma_alloc_coherent(&alx->hw.pdev->dev,
            alx->descmem.size,
            &alx->descmem.dma, GFP_KERNEL);
 if (!alx->descmem.virt)
  return -ENOMEM;


 BUILD_BUG_ON(sizeof(struct alx_txd) % 8);
 BUILD_BUG_ON(sizeof(struct alx_rrd) % 8);

 for (i = 0; i < alx->num_txq; i++) {
  offset = alx_alloc_tx_ring(alx, alx->qnapi[i]->txq, offset);
  if (offset < 0) {
   netdev_err(alx->dev, "Allocation of tx buffer failed!\n");
   return -ENOMEM;
  }
 }

 offset = alx_alloc_rx_ring(alx, alx->qnapi[0]->rxq, offset);
 if (offset < 0) {
  netdev_err(alx->dev, "Allocation of rx buffer failed!\n");
  return -ENOMEM;
 }

 return 0;
}
