
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct c4iw_wr_wait {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct c4iw_rdev {TYPE_2__ lldi; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int T4_ULPTX_MAX_DMA ;
 int T4_ULPTX_MIN_IO ;
 int _c4iw_write_mem_dma_aligned (struct c4iw_rdev*,int,int,int,struct sk_buff*,struct c4iw_wr_wait*) ;
 int _c4iw_write_mem_inline (struct c4iw_rdev*,int,int,void*,struct sk_buff*,struct c4iw_wr_wait*) ;
 int dma_map_single (int *,void*,int,int ) ;
 scalar_t__ dma_mapping_error (int *,int) ;
 int dma_unmap_single (int *,int,int,int ) ;
 int inline_threshold ;

__attribute__((used)) static int _c4iw_write_mem_dma(struct c4iw_rdev *rdev, u32 addr, u32 len,
          void *data, struct sk_buff *skb,
          struct c4iw_wr_wait *wr_waitp)
{
 u32 remain = len;
 u32 dmalen;
 int ret = 0;
 dma_addr_t daddr;
 dma_addr_t save;

 daddr = dma_map_single(&rdev->lldi.pdev->dev, data, len, DMA_TO_DEVICE);
 if (dma_mapping_error(&rdev->lldi.pdev->dev, daddr))
  return -1;
 save = daddr;

 while (remain > inline_threshold) {
  if (remain < T4_ULPTX_MAX_DMA) {
   if (remain & ~T4_ULPTX_MIN_IO)
    dmalen = remain & ~(T4_ULPTX_MIN_IO-1);
   else
    dmalen = remain;
  } else
   dmalen = T4_ULPTX_MAX_DMA;
  remain -= dmalen;
  ret = _c4iw_write_mem_dma_aligned(rdev, addr, dmalen, daddr,
       skb, remain ? ((void*)0) : wr_waitp);
  if (ret)
   goto out;
  addr += dmalen >> 5;
  data += dmalen;
  daddr += dmalen;
 }
 if (remain)
  ret = _c4iw_write_mem_inline(rdev, addr, remain, data, skb,
          wr_waitp);
out:
 dma_unmap_single(&rdev->lldi.pdev->dev, save, len, DMA_TO_DEVICE);
 return ret;
}
