
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum omap_dma_channel_mode { ____Placeholder_omap_dma_channel_mode } omap_dma_channel_mode ;


 int LCH_CTRL (int) ;
 scalar_t__ cpu_class_is_omap1 () ;
 int cpu_is_omap15xx () ;
 int dma_read (int ) ;
 int dma_write (int,int ) ;

void omap_set_dma_channel_mode(int lch, enum omap_dma_channel_mode mode)
{
 if (cpu_class_is_omap1() && !cpu_is_omap15xx()) {
  u32 l;

  l = dma_read(LCH_CTRL(lch));
  l &= ~0x7;
  l |= mode;
  dma_write(l, LCH_CTRL(lch));
 }
}
