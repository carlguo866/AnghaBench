; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_average_bandwidth_vs_dram_bandwidth_for_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_average_bandwidth_vs_dram_bandwidth_for_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce10_wm_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce10_wm_params*)* @dce_v10_0_average_bandwidth_vs_dram_bandwidth_for_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v10_0_average_bandwidth_vs_dram_bandwidth_for_display(%struct.dce10_wm_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dce10_wm_params*, align 8
  store %struct.dce10_wm_params* %0, %struct.dce10_wm_params** %3, align 8
  %4 = load %struct.dce10_wm_params*, %struct.dce10_wm_params** %3, align 8
  %5 = call i32 @dce_v10_0_average_bandwidth(%struct.dce10_wm_params* %4)
  %6 = load %struct.dce10_wm_params*, %struct.dce10_wm_params** %3, align 8
  %7 = call i32 @dce_v10_0_dram_bandwidth_for_display(%struct.dce10_wm_params* %6)
  %8 = load %struct.dce10_wm_params*, %struct.dce10_wm_params** %3, align 8
  %9 = getelementptr inbounds %struct.dce10_wm_params, %struct.dce10_wm_params* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sdiv i32 %7, %10
  %12 = icmp sle i32 %5, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32 @dce_v10_0_average_bandwidth(%struct.dce10_wm_params*) #1

declare dso_local i32 @dce_v10_0_dram_bandwidth_for_display(%struct.dce10_wm_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
