
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {int usec_timeout; } ;


 int ETIMEDOUT ;
 int VCE_CMD_END ;
 int amdgpu_ring_alloc (struct amdgpu_ring*,int) ;
 int amdgpu_ring_commit (struct amdgpu_ring*) ;
 scalar_t__ amdgpu_ring_get_rptr (struct amdgpu_ring*) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int ) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int udelay (int) ;

int amdgpu_vce_ring_test_ring(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;
 uint32_t rptr;
 unsigned i;
 int r, timeout = adev->usec_timeout;


 if (amdgpu_sriov_vf(adev))
  return 0;

 r = amdgpu_ring_alloc(ring, 16);
 if (r)
  return r;

 rptr = amdgpu_ring_get_rptr(ring);

 amdgpu_ring_write(ring, VCE_CMD_END);
 amdgpu_ring_commit(ring);

 for (i = 0; i < timeout; i++) {
  if (amdgpu_ring_get_rptr(ring) != rptr)
   break;
  udelay(1);
 }

 if (i >= timeout)
  r = -ETIMEDOUT;

 return r;
}
