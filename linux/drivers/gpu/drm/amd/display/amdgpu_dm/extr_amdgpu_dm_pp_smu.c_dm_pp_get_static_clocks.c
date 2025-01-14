
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dm_pp_static_clock_info {int max_mclk_khz; int max_sclk_khz; int max_clocks_state; } ;
struct dc_context {struct amdgpu_device* driver_context; } ;
struct TYPE_6__ {scalar_t__ funcs; } ;
struct TYPE_5__ {int pp_handle; TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_3__ smu; TYPE_2__ powerplay; } ;
struct amd_pp_clock_info {int max_memory_clock; int max_engine_clock; int max_clocks_state; int member_0; } ;
struct TYPE_4__ {int (* get_current_clocks ) (int ,struct amd_pp_clock_info*) ;} ;


 int pp_to_dc_powerlevel_state (int ) ;
 int smu_get_current_clocks (TYPE_3__*,struct amd_pp_clock_info*) ;
 int stub1 (int ,struct amd_pp_clock_info*) ;

bool dm_pp_get_static_clocks(
 const struct dc_context *ctx,
 struct dm_pp_static_clock_info *static_clk_info)
{
 struct amdgpu_device *adev = ctx->driver_context;
 struct amd_pp_clock_info pp_clk_info = {0};
 int ret = 0;

 if (adev->powerplay.pp_funcs && adev->powerplay.pp_funcs->get_current_clocks)
  ret = adev->powerplay.pp_funcs->get_current_clocks(
   adev->powerplay.pp_handle,
   &pp_clk_info);
 else if (adev->smu.funcs)
  ret = smu_get_current_clocks(&adev->smu, &pp_clk_info);
 if (ret)
  return 0;

 static_clk_info->max_clocks_state = pp_to_dc_powerlevel_state(pp_clk_info.max_clocks_state);
 static_clk_info->max_mclk_khz = pp_clk_info.max_memory_clock * 10;
 static_clk_info->max_sclk_khz = pp_clk_info.max_engine_clock * 10;

 return 1;
}
