
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgmac_dma_desc {void* buf_size; } ;


 int DESC_BUFFER2_SZ_OFFSET ;
 int MAX_DESC_BUF_SZ ;
 void* cpu_to_le32 (int) ;

__attribute__((used)) static inline void desc_set_buf_len(struct xgmac_dma_desc *p, u32 buf_sz)
{
 if (buf_sz > MAX_DESC_BUF_SZ)
  p->buf_size = cpu_to_le32(MAX_DESC_BUF_SZ |
   (buf_sz - MAX_DESC_BUF_SZ) << DESC_BUFFER2_SZ_OFFSET);
 else
  p->buf_size = cpu_to_le32(buf_sz);
}
