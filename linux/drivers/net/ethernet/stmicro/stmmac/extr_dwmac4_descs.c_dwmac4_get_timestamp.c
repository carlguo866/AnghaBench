
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef int u32 ;
struct dma_desc {int des1; int des0; } ;


 unsigned long long le32_to_cpu (int ) ;

__attribute__((used)) static inline void dwmac4_get_timestamp(void *desc, u32 ats, u64 *ts)
{
 struct dma_desc *p = (struct dma_desc *)desc;
 u64 ns;

 ns = le32_to_cpu(p->des0);

 ns += le32_to_cpu(p->des1) * 1000000000ULL;

 *ts = ns;
}
