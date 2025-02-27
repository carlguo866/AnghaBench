
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int mc_idx_lock; } ;


 int RREG32 (int ) ;
 int RS480_NB_MC_DATA ;
 int RS480_NB_MC_INDEX ;
 int WREG32 (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

uint32_t rs400_mc_rreg(struct radeon_device *rdev, uint32_t reg)
{
 unsigned long flags;
 uint32_t r;

 spin_lock_irqsave(&rdev->mc_idx_lock, flags);
 WREG32(RS480_NB_MC_INDEX, reg & 0xff);
 r = RREG32(RS480_NB_MC_DATA);
 WREG32(RS480_NB_MC_INDEX, 0xff);
 spin_unlock_irqrestore(&rdev->mc_idx_lock, flags);
 return r;
}
