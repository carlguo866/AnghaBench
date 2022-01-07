
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_ring {int idx; } ;
struct radeon_device {unsigned int usec_timeout; } ;


 int DRM_ERROR (char*,int ,int) ;
 int DRM_INFO (char*,int ,unsigned int) ;
 int EINVAL ;
 int PACKET0 (int ,int ) ;
 int RREG32 (int ) ;
 int UVD_CONTEXT_ID ;
 int WREG32 (int ,int) ;
 int radeon_ring_lock (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_unlock_commit (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_write (struct radeon_ring*,int) ;
 int udelay (int) ;

int uvd_v1_0_ring_test(struct radeon_device *rdev, struct radeon_ring *ring)
{
 uint32_t tmp = 0;
 unsigned i;
 int r;

 WREG32(UVD_CONTEXT_ID, 0xCAFEDEAD);
 r = radeon_ring_lock(rdev, ring, 3);
 if (r) {
  DRM_ERROR("radeon: cp failed to lock ring %d (%d).\n",
     ring->idx, r);
  return r;
 }
 radeon_ring_write(ring, PACKET0(UVD_CONTEXT_ID, 0));
 radeon_ring_write(ring, 0xDEADBEEF);
 radeon_ring_unlock_commit(rdev, ring, 0);
 for (i = 0; i < rdev->usec_timeout; i++) {
  tmp = RREG32(UVD_CONTEXT_ID);
  if (tmp == 0xDEADBEEF)
   break;
  udelay(1);
 }

 if (i < rdev->usec_timeout) {
  DRM_INFO("ring test on %d succeeded in %d usecs\n",
    ring->idx, i);
 } else {
  DRM_ERROR("radeon: ring %d test failed (0x%08X)\n",
     ring->idx, tmp);
  r = -EINVAL;
 }
 return r;
}
