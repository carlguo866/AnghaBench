
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b43_dmaring {int dummy; } ;
struct b43_dmadesc64 {int dummy; } ;


 int B43_DMA64_RXSTATDPTR ;
 int B43_DMA64_RXSTATUS ;
 int b43_dma_read (struct b43_dmaring*,int ) ;

__attribute__((used)) static int op64_get_current_rxslot(struct b43_dmaring *ring)
{
 u32 val;

 val = b43_dma_read(ring, B43_DMA64_RXSTATUS);
 val &= B43_DMA64_RXSTATDPTR;

 return (val / sizeof(struct b43_dmadesc64));
}
