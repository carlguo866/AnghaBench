
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_ring {scalar_t__ idx; } ;
struct radeon_device {int dummy; } ;


 scalar_t__ R600_RING_TYPE_DMA_INDEX ;
 int RADEON_RESET_DMA ;
 int RADEON_RESET_DMA1 ;
 int cayman_gpu_check_soft_reset (struct radeon_device*) ;
 int radeon_ring_lockup_update (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_test_lockup (struct radeon_device*,struct radeon_ring*) ;

bool cayman_dma_is_lockup(struct radeon_device *rdev, struct radeon_ring *ring)
{
 u32 reset_mask = cayman_gpu_check_soft_reset(rdev);
 u32 mask;

 if (ring->idx == R600_RING_TYPE_DMA_INDEX)
  mask = RADEON_RESET_DMA;
 else
  mask = RADEON_RESET_DMA1;

 if (!(reset_mask & mask)) {
  radeon_ring_lockup_update(rdev, ring);
  return 0;
 }
 return radeon_ring_test_lockup(rdev, ring);
}
