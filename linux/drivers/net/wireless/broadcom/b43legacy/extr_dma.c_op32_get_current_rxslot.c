
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b43legacy_dmaring {int dummy; } ;
struct b43legacy_dmadesc32 {int dummy; } ;


 int B43legacy_DMA32_RXDPTR ;
 int B43legacy_DMA32_RXSTATUS ;
 int b43legacy_dma_read (struct b43legacy_dmaring*,int ) ;

__attribute__((used)) static int op32_get_current_rxslot(struct b43legacy_dmaring *ring)
{
 u32 val;

 val = b43legacy_dma_read(ring, B43legacy_DMA32_RXSTATUS);
 val &= B43legacy_DMA32_RXDPTR;

 return (val / sizeof(struct b43legacy_dmadesc32));
}
