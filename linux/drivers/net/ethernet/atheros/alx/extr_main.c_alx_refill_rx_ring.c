
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct sk_buff {scalar_t__ data; } ;
struct alx_rx_queue {size_t write_idx; size_t read_idx; struct alx_buffer* bufs; struct alx_rfd* rfd; } ;
struct alx_rfd {int addr; } ;
struct TYPE_6__ {TYPE_2__* pdev; } ;
struct alx_priv {size_t rx_ringsz; TYPE_3__ hw; int rxbuf_size; int dev; TYPE_1__** qnapi; } ;
struct alx_buffer {struct sk_buff* skb; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {struct alx_rx_queue* rxq; } ;


 int ALX_RFD_PIDX ;
 int DMA_FROM_DEVICE ;
 scalar_t__ WARN_ON (int) ;
 struct sk_buff* __netdev_alloc_skb (int ,int ,int ) ;
 int alx_write_mem16 (TYPE_3__*,int ,size_t) ;
 int cpu_to_le64 (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_map_single (int *,scalar_t__,int ,int ) ;
 scalar_t__ dma_mapping_error (int *,int) ;
 int dma_unmap_addr_set (struct alx_buffer*,int,int) ;
 int dma_unmap_len_set (struct alx_buffer*,int ,int ) ;
 int size ;
 int skb_reserve (struct sk_buff*,int) ;
 int wmb () ;

__attribute__((used)) static int alx_refill_rx_ring(struct alx_priv *alx, gfp_t gfp)
{
 struct alx_rx_queue *rxq = alx->qnapi[0]->rxq;
 struct sk_buff *skb;
 struct alx_buffer *cur_buf;
 dma_addr_t dma;
 u16 cur, next, count = 0;

 next = cur = rxq->write_idx;
 if (++next == alx->rx_ringsz)
  next = 0;
 cur_buf = &rxq->bufs[cur];

 while (!cur_buf->skb && next != rxq->read_idx) {
  struct alx_rfd *rfd = &rxq->rfd[cur];
  skb = __netdev_alloc_skb(alx->dev, alx->rxbuf_size + 64, gfp);
  if (!skb)
   break;

  if (((unsigned long)skb->data & 0xfff) == 0xfc0)
   skb_reserve(skb, 64);

  dma = dma_map_single(&alx->hw.pdev->dev,
         skb->data, alx->rxbuf_size,
         DMA_FROM_DEVICE);
  if (dma_mapping_error(&alx->hw.pdev->dev, dma)) {
   dev_kfree_skb(skb);
   break;
  }




  if (WARN_ON(dma & 3)) {
   dev_kfree_skb(skb);
   break;
  }

  cur_buf->skb = skb;
  dma_unmap_len_set(cur_buf, size, alx->rxbuf_size);
  dma_unmap_addr_set(cur_buf, dma, dma);
  rfd->addr = cpu_to_le64(dma);

  cur = next;
  if (++next == alx->rx_ringsz)
   next = 0;
  cur_buf = &rxq->bufs[cur];
  count++;
 }

 if (count) {

  wmb();
  rxq->write_idx = cur;
  alx_write_mem16(&alx->hw, ALX_RFD_PIDX, cur);
 }

 return count;
}
