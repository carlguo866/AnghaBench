
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {scalar_t__ asic_type; int last_mm_index; int rio_mem_size; scalar_t__ rio_mem; } ;


 scalar_t__ CHIP_VEGA10 ;
 int iowrite32 (int,scalar_t__) ;
 int mmMM_DATA ;
 int mmMM_INDEX ;
 int udelay (int) ;

void amdgpu_io_wreg(struct amdgpu_device *adev, u32 reg, u32 v)
{
 if (adev->asic_type >= CHIP_VEGA10 && reg == 0) {
  adev->last_mm_index = v;
 }

 if ((reg * 4) < adev->rio_mem_size)
  iowrite32(v, adev->rio_mem + (reg * 4));
 else {
  iowrite32((reg * 4), adev->rio_mem + (mmMM_INDEX * 4));
  iowrite32(v, adev->rio_mem + (mmMM_DATA * 4));
 }

 if (adev->asic_type >= CHIP_VEGA10 && reg == 1 && adev->last_mm_index == 0x5702C) {
  udelay(500);
 }
}
