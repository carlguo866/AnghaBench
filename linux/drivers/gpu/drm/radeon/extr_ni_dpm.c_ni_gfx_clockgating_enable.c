
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CAYMAN_CGCG_CGLS_DISABLE_LENGTH ;
 int CAYMAN_CGCG_CGLS_ENABLE_LENGTH ;
 int btc_program_mgcg_hw_sequence (struct radeon_device*,int const*,int ) ;
 int cayman_cgcg_cgls_disable ;
 int cayman_cgcg_cgls_enable ;

__attribute__((used)) static void ni_gfx_clockgating_enable(struct radeon_device *rdev,
          bool enable)
{
 u32 count;
 const u32 *ps = ((void*)0);

 if (enable) {
  ps = (const u32 *)&cayman_cgcg_cgls_enable;
  count = CAYMAN_CGCG_CGLS_ENABLE_LENGTH;
 } else {
  ps = (const u32 *)&cayman_cgcg_cgls_disable;
  count = CAYMAN_CGCG_CGLS_DISABLE_LENGTH;
 }

 btc_program_mgcg_hw_sequence(rdev, ps, count);
}
