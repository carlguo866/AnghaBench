; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_ironlake_wait_panel_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_ironlake_wait_panel_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Wait for panel power off time\0A\00", align 1
@IDLE_OFF_MASK = common dso_local global i32 0, align 4
@IDLE_OFF_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @ironlake_wait_panel_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_wait_panel_off(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %3 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %5 = load i32, i32* @IDLE_OFF_MASK, align 4
  %6 = load i32, i32* @IDLE_OFF_VALUE, align 4
  %7 = call i32 @ironlake_wait_panel_status(%struct.intel_dp* %4, i32 %5, i32 %6)
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @ironlake_wait_panel_status(%struct.intel_dp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
