
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int swfq_empty; } ;
union queue_threshold {int bits32; TYPE_1__ bits; } ;
struct TYPE_7__ {int sw_skb_size; } ;
union dma_skb_size {int bits32; TYPE_2__ bits; } ;
struct gmac_queue_page {int page; } ;
struct gemini_ethernet {int freeq_frag_order; int freeq_order; int freeq_dma_base; unsigned int num_freeq_pages; TYPE_4__* freeq_ring; int dev; struct gmac_queue_page* freeq_pages; scalar_t__ base; } ;
typedef int dma_addr_t ;
struct TYPE_8__ {int buf_adr; } ;
struct TYPE_9__ {TYPE_3__ word2; } ;


 int DMA_FROM_DEVICE ;
 int DMA_Q_BASE_MASK ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ GLOBAL_DMA_SKB_SIZE_REG ;
 scalar_t__ GLOBAL_QUEUE_THRESHOLD_REG ;
 scalar_t__ GLOBAL_SW_FREEQ_BASE_SIZE_REG ;
 unsigned int PAGE_SHIFT ;
 int dev_info (int ,char*,unsigned int) ;
 int dev_warn (int ,char*) ;
 TYPE_4__* dma_alloc_coherent (int ,int,int*,int ) ;
 int dma_free_coherent (int ,int,TYPE_4__*,int) ;
 int dma_unmap_single (int ,int ,unsigned int,int ) ;
 unsigned int geth_fill_freeq (struct gemini_ethernet*,int) ;
 int geth_freeq_alloc_map_page (struct gemini_ethernet*,unsigned int) ;
 struct gmac_queue_page* kcalloc (unsigned int,int,int ) ;
 int kfree (struct gmac_queue_page*) ;
 int put_page (int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int geth_setup_freeq(struct gemini_ethernet *geth)
{
 unsigned int fpp_order = PAGE_SHIFT - geth->freeq_frag_order;
 unsigned int frag_len = 1 << geth->freeq_frag_order;
 unsigned int len = 1 << geth->freeq_order;
 unsigned int pages = len >> fpp_order;
 union queue_threshold qt;
 union dma_skb_size skbsz;
 unsigned int filled;
 unsigned int pn;

 geth->freeq_ring = dma_alloc_coherent(geth->dev,
  sizeof(*geth->freeq_ring) << geth->freeq_order,
  &geth->freeq_dma_base, GFP_KERNEL);
 if (!geth->freeq_ring)
  return -ENOMEM;
 if (geth->freeq_dma_base & ~DMA_Q_BASE_MASK) {
  dev_warn(geth->dev, "queue ring base is not aligned\n");
  goto err_freeq;
 }


 geth->freeq_pages = kcalloc(pages, sizeof(*geth->freeq_pages),
        GFP_KERNEL);
 if (!geth->freeq_pages)
  goto err_freeq;
 geth->num_freeq_pages = pages;

 dev_info(geth->dev, "allocate %d pages for queue\n", pages);
 for (pn = 0; pn < pages; pn++)
  if (!geth_freeq_alloc_map_page(geth, pn))
   goto err_freeq_alloc;

 filled = geth_fill_freeq(geth, 0);
 if (!filled)
  goto err_freeq_alloc;

 qt.bits32 = readl(geth->base + GLOBAL_QUEUE_THRESHOLD_REG);
 qt.bits.swfq_empty = 32;
 writel(qt.bits32, geth->base + GLOBAL_QUEUE_THRESHOLD_REG);

 skbsz.bits.sw_skb_size = 1 << geth->freeq_frag_order;
 writel(skbsz.bits32, geth->base + GLOBAL_DMA_SKB_SIZE_REG);
 writel(geth->freeq_dma_base | geth->freeq_order,
        geth->base + GLOBAL_SW_FREEQ_BASE_SIZE_REG);

 return 0;

err_freeq_alloc:
 while (pn > 0) {
  struct gmac_queue_page *gpage;
  dma_addr_t mapping;

  --pn;
  mapping = geth->freeq_ring[pn << fpp_order].word2.buf_adr;
  dma_unmap_single(geth->dev, mapping, frag_len, DMA_FROM_DEVICE);
  gpage = &geth->freeq_pages[pn];
  put_page(gpage->page);
 }

 kfree(geth->freeq_pages);
err_freeq:
 dma_free_coherent(geth->dev,
     sizeof(*geth->freeq_ring) << geth->freeq_order,
     geth->freeq_ring, geth->freeq_dma_base);
 geth->freeq_ring = ((void*)0);
 return -ENOMEM;
}
