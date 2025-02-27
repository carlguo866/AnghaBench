
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des1; } ;


 int BUF_SIZE_16KiB ;
 int BUF_SIZE_8KiB ;
 int ERDES1_BUFFER2_SIZE_MASK ;
 int ERDES1_BUFFER2_SIZE_SHIFT ;
 int ERDES1_END_RING ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static inline void ehn_desc_rx_set_on_ring(struct dma_desc *p, int end,
        int bfsize)
{
 if (bfsize == BUF_SIZE_16KiB)
  p->des1 |= cpu_to_le32((BUF_SIZE_8KiB
    << ERDES1_BUFFER2_SIZE_SHIFT)
      & ERDES1_BUFFER2_SIZE_MASK);

 if (end)
  p->des1 |= cpu_to_le32(ERDES1_END_RING);
}
