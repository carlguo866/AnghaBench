
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int smc_idx_lock; } ;


 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int mmMP0PUB_IND_DATA ;
 int mmMP0PUB_IND_INDEX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 cz_smc_rreg(struct amdgpu_device *adev, u32 reg)
{
 unsigned long flags;
 u32 r;

 spin_lock_irqsave(&adev->smc_idx_lock, flags);
 WREG32(mmMP0PUB_IND_INDEX, (reg));
 r = RREG32(mmMP0PUB_IND_DATA);
 spin_unlock_irqrestore(&adev->smc_idx_lock, flags);
 return r;
}
