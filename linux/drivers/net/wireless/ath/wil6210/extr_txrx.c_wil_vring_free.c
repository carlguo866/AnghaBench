
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union wil_tx_desc {int dummy; } wil_tx_desc ;
typedef int u16 ;
struct wil_ring {int size; size_t swtail; size_t swhead; struct wil_ctx* ctx; TYPE_4__* va; int pa; int is_rx; } ;
struct wil_ctx {scalar_t__ skb; } ;
struct wil6210_priv {struct wil_ring* ring_tx; int mutex; } ;
struct vring_tx_desc {int dummy; } ;
struct TYPE_7__ {int length; int addr; } ;
struct vring_rx_desc {TYPE_3__ dma; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {struct vring_rx_desc legacy; } ;
struct TYPE_5__ {struct vring_tx_desc legacy; } ;
struct TYPE_8__ {TYPE_2__ rx; TYPE_1__ tx; } ;


 int DMA_FROM_DEVICE ;
 int dev_kfree_skb_any (scalar_t__) ;
 int dma_free_coherent (struct device*,size_t,void*,int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int kfree (struct wil_ctx*) ;
 int kfree_skb (scalar_t__) ;
 int le16_to_cpu (int ) ;
 int lockdep_assert_held (int *) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,int,...) ;
 int wil_dbg_txrx (struct wil6210_priv*,char*,size_t) ;
 int wil_desc_addr (int *) ;
 int wil_ring_advance_head (struct wil_ring*,int) ;
 int wil_ring_is_empty (struct wil_ring*) ;
 void* wil_ring_next_tail (struct wil_ring*) ;
 struct device* wil_to_dev (struct wil6210_priv*) ;
 int wil_txdesc_unmap (struct device*,union wil_tx_desc*,struct wil_ctx*) ;

__attribute__((used)) static void wil_vring_free(struct wil6210_priv *wil, struct wil_ring *vring)
{
 struct device *dev = wil_to_dev(wil);
 size_t sz = vring->size * sizeof(vring->va[0]);

 lockdep_assert_held(&wil->mutex);
 if (!vring->is_rx) {
  int vring_index = vring - wil->ring_tx;

  wil_dbg_misc(wil, "free Tx vring %d [%d] 0x%p:%pad 0x%p\n",
        vring_index, vring->size, vring->va,
        &vring->pa, vring->ctx);
 } else {
  wil_dbg_misc(wil, "free Rx vring [%d] 0x%p:%pad 0x%p\n",
        vring->size, vring->va,
        &vring->pa, vring->ctx);
 }

 while (!wil_ring_is_empty(vring)) {
  dma_addr_t pa;
  u16 dmalen;
  struct wil_ctx *ctx;

  if (!vring->is_rx) {
   struct vring_tx_desc dd, *d = &dd;
   volatile struct vring_tx_desc *_d =
     &vring->va[vring->swtail].tx.legacy;

   ctx = &vring->ctx[vring->swtail];
   if (!ctx) {
    wil_dbg_txrx(wil,
          "ctx(%d) was already completed\n",
          vring->swtail);
    vring->swtail = wil_ring_next_tail(vring);
    continue;
   }
   *d = *_d;
   wil_txdesc_unmap(dev, (union wil_tx_desc *)d, ctx);
   if (ctx->skb)
    dev_kfree_skb_any(ctx->skb);
   vring->swtail = wil_ring_next_tail(vring);
  } else {
   struct vring_rx_desc dd, *d = &dd;
   volatile struct vring_rx_desc *_d =
    &vring->va[vring->swhead].rx.legacy;

   ctx = &vring->ctx[vring->swhead];
   *d = *_d;
   pa = wil_desc_addr(&d->dma.addr);
   dmalen = le16_to_cpu(d->dma.length);
   dma_unmap_single(dev, pa, dmalen, DMA_FROM_DEVICE);
   kfree_skb(ctx->skb);
   wil_ring_advance_head(vring, 1);
  }
 }
 dma_free_coherent(dev, sz, (void *)vring->va, vring->pa);
 kfree(vring->ctx);
 vring->pa = 0;
 vring->va = ((void*)0);
 vring->ctx = ((void*)0);
}
