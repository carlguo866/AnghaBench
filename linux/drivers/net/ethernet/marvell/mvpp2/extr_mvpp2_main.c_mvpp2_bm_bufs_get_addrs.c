
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mvpp2_bm_pool {int id; } ;
struct mvpp2 {scalar_t__ hw_version; } ;
struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;


 scalar_t__ MVPP22 ;
 int MVPP22_BM_ADDR_HIGH_ALLOC ;
 int MVPP22_BM_ADDR_HIGH_PHYS_MASK ;
 int MVPP22_BM_ADDR_HIGH_VIRT_MASK ;
 int MVPP22_BM_ADDR_HIGH_VIRT_SHIFT ;
 int MVPP2_BM_PHY_ALLOC_REG (int ) ;
 int MVPP2_BM_VIRT_ALLOC_REG ;
 int get_cpu () ;
 unsigned int mvpp2_cpu_to_thread (struct mvpp2*,int ) ;
 void* mvpp2_thread_read (struct mvpp2*,unsigned int,int ) ;
 int put_cpu () ;

__attribute__((used)) static void mvpp2_bm_bufs_get_addrs(struct device *dev, struct mvpp2 *priv,
        struct mvpp2_bm_pool *bm_pool,
        dma_addr_t *dma_addr,
        phys_addr_t *phys_addr)
{
 unsigned int thread = mvpp2_cpu_to_thread(priv, get_cpu());

 *dma_addr = mvpp2_thread_read(priv, thread,
          MVPP2_BM_PHY_ALLOC_REG(bm_pool->id));
 *phys_addr = mvpp2_thread_read(priv, thread, MVPP2_BM_VIRT_ALLOC_REG);

 if (priv->hw_version == MVPP22) {
  u32 val;
  u32 dma_addr_highbits, phys_addr_highbits;

  val = mvpp2_thread_read(priv, thread, MVPP22_BM_ADDR_HIGH_ALLOC);
  dma_addr_highbits = (val & MVPP22_BM_ADDR_HIGH_PHYS_MASK);
  phys_addr_highbits = (val & MVPP22_BM_ADDR_HIGH_VIRT_MASK) >>
   MVPP22_BM_ADDR_HIGH_VIRT_SHIFT;

  if (sizeof(dma_addr_t) == 8)
   *dma_addr |= (u64)dma_addr_highbits << 32;

  if (sizeof(phys_addr_t) == 8)
   *phys_addr |= (u64)phys_addr_highbits << 32;
 }

 put_cpu();
}
