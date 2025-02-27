
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_fence_driver {int scratch_reg; int last_seq; int * cpu_addr; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct radeon_device {TYPE_1__ wb; struct radeon_fence_driver* fence_drv; } ;


 int RREG32 (int ) ;
 int atomic64_read (int *) ;
 int le32_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int lower_32_bits (int ) ;

__attribute__((used)) static u32 radeon_fence_read(struct radeon_device *rdev, int ring)
{
 struct radeon_fence_driver *drv = &rdev->fence_drv[ring];
 u32 seq = 0;

 if (likely(rdev->wb.enabled || !drv->scratch_reg)) {
  if (drv->cpu_addr) {
   seq = le32_to_cpu(*drv->cpu_addr);
  } else {
   seq = lower_32_bits(atomic64_read(&drv->last_seq));
  }
 } else {
  seq = RREG32(drv->scratch_reg);
 }
 return seq;
}
