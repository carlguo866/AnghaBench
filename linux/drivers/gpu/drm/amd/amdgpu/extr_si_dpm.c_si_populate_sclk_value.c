
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct amdgpu_device {int dummy; } ;
struct TYPE_4__ {void* vCG_SPLL_SPREAD_SPECTRUM_2; void* vCG_SPLL_SPREAD_SPECTRUM; void* vCG_SPLL_FUNC_CNTL_4; void* vCG_SPLL_FUNC_CNTL_3; void* vCG_SPLL_FUNC_CNTL_2; void* vCG_SPLL_FUNC_CNTL; void* sclk_value; } ;
typedef TYPE_1__ SISLANDS_SMC_SCLK_VALUE ;


 void* cpu_to_be32 (void*) ;
 int si_calculate_sclk_params (struct amdgpu_device*,int ,TYPE_1__*) ;

__attribute__((used)) static int si_populate_sclk_value(struct amdgpu_device *adev,
      u32 engine_clock,
      SISLANDS_SMC_SCLK_VALUE *sclk)
{
 SISLANDS_SMC_SCLK_VALUE sclk_tmp;
 int ret;

 ret = si_calculate_sclk_params(adev, engine_clock, &sclk_tmp);
 if (!ret) {
  sclk->sclk_value = cpu_to_be32(sclk_tmp.sclk_value);
  sclk->vCG_SPLL_FUNC_CNTL = cpu_to_be32(sclk_tmp.vCG_SPLL_FUNC_CNTL);
  sclk->vCG_SPLL_FUNC_CNTL_2 = cpu_to_be32(sclk_tmp.vCG_SPLL_FUNC_CNTL_2);
  sclk->vCG_SPLL_FUNC_CNTL_3 = cpu_to_be32(sclk_tmp.vCG_SPLL_FUNC_CNTL_3);
  sclk->vCG_SPLL_FUNC_CNTL_4 = cpu_to_be32(sclk_tmp.vCG_SPLL_FUNC_CNTL_4);
  sclk->vCG_SPLL_SPREAD_SPECTRUM = cpu_to_be32(sclk_tmp.vCG_SPLL_SPREAD_SPECTRUM);
  sclk->vCG_SPLL_SPREAD_SPECTRUM_2 = cpu_to_be32(sclk_tmp.vCG_SPLL_SPREAD_SPECTRUM_2);
 }

 return ret;
}
