; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_thermal_start_smc_fan_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_thermal_start_smc_fan_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@PHM_PlatformCaps_MicrocodeFanControl = common dso_local global i32 0, align 4
@FDO_PWM_MODE_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_thermal_start_smc_fan_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_thermal_start_smc_fan_control(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %3 = load i32, i32* @PHM_PlatformCaps_MicrocodeFanControl, align 4
  %4 = call i64 @PP_CAP(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %8 = call i32 @smu7_fan_ctrl_start_smc_fan_control(%struct.pp_hwmgr* %7)
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = load i32, i32* @FDO_PWM_MODE_STATIC, align 4
  %11 = call i32 @smu7_fan_ctrl_set_static_mode(%struct.pp_hwmgr* %9, i32 %10)
  br label %12

12:                                               ; preds = %6, %1
  ret i32 0
}

declare dso_local i64 @PP_CAP(i32) #1

declare dso_local i32 @smu7_fan_ctrl_start_smc_fan_control(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_fan_ctrl_set_static_mode(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
