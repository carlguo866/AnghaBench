; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll.h_msm_dsi_pll_28nm_8960_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll.h_msm_dsi_pll_28nm_8960_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_pll = type { i32 }
%struct.platform_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.msm_dsi_pll* (%struct.platform_device*, i32)* @msm_dsi_pll_28nm_8960_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.msm_dsi_pll* @msm_dsi_pll_28nm_8960_init(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @ENODEV, align 4
  %6 = sub nsw i32 0, %5
  %7 = call %struct.msm_dsi_pll* @ERR_PTR(i32 %6)
  ret %struct.msm_dsi_pll* %7
}

declare dso_local %struct.msm_dsi_pll* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
