
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int HDP_MEM_COHERENCY_FLUSH_CNTL ;
 int VM_INVALIDATE_REQUEST ;
 int WREG32 (int ,int) ;

void cayman_pcie_gart_tlb_flush(struct radeon_device *rdev)
{

 WREG32(HDP_MEM_COHERENCY_FLUSH_CNTL, 0x1);


 WREG32(VM_INVALIDATE_REQUEST, 1);
}
