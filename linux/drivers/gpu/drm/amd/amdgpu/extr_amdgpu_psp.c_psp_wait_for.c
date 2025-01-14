
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct psp_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int usec_timeout; } ;


 int ETIME ;
 int RREG32 (int) ;
 int udelay (int) ;

int psp_wait_for(struct psp_context *psp, uint32_t reg_index,
   uint32_t reg_val, uint32_t mask, bool check_changed)
{
 uint32_t val;
 int i;
 struct amdgpu_device *adev = psp->adev;

 for (i = 0; i < adev->usec_timeout; i++) {
  val = RREG32(reg_index);
  if (check_changed) {
   if (val != reg_val)
    return 0;
  } else {
   if ((val & mask) == reg_val)
    return 0;
  }
  udelay(1);
 }

 return -ETIME;
}
