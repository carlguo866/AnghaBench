
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int pg_flags; } ;


 int DISABLE_CP_PG ;
 int RADEON_PG_SUPPORT_CP ;
 int RLC_PG_CNTL ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;

__attribute__((used)) static void cik_enable_cp_pg(struct radeon_device *rdev, bool enable)
{
 u32 data, orig;

 orig = data = RREG32(RLC_PG_CNTL);
 if (enable && (rdev->pg_flags & RADEON_PG_SUPPORT_CP))
  data &= ~DISABLE_CP_PG;
 else
  data |= DISABLE_CP_PG;
 if (orig != data)
  WREG32(RLC_PG_CNTL, data);
}
