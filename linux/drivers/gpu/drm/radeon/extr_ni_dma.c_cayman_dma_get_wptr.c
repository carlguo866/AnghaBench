
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u32 ;
struct radeon_ring {scalar_t__ idx; } ;
struct radeon_device {int dummy; } ;


 scalar_t__ DMA0_REGISTER_OFFSET ;
 scalar_t__ DMA1_REGISTER_OFFSET ;
 scalar_t__ DMA_RB_WPTR ;
 scalar_t__ R600_RING_TYPE_DMA_INDEX ;
 int RREG32 (scalar_t__) ;

uint32_t cayman_dma_get_wptr(struct radeon_device *rdev,
      struct radeon_ring *ring)
{
 u32 reg;

 if (ring->idx == R600_RING_TYPE_DMA_INDEX)
  reg = DMA_RB_WPTR + DMA0_REGISTER_OFFSET;
 else
  reg = DMA_RB_WPTR + DMA1_REGISTER_OFFSET;

 return (RREG32(reg) & 0x3fffc) >> 2;
}
