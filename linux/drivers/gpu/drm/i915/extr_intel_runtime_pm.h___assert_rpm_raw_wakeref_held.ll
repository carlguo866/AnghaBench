; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_runtime_pm.h___assert_rpm_raw_wakeref_held.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_runtime_pm.h___assert_rpm_raw_wakeref_held.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_runtime_pm = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"RPM raw-wakeref not held\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_runtime_pm*, i32)* @__assert_rpm_raw_wakeref_held to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__assert_rpm_raw_wakeref_held(%struct.intel_runtime_pm* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_runtime_pm*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_runtime_pm* %0, %struct.intel_runtime_pm** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %3, align 8
  %6 = call i32 @assert_rpm_device_not_suspended(%struct.intel_runtime_pm* %5)
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @intel_rpm_raw_wakeref_count(i32 %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ONCE(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert_rpm_device_not_suspended(%struct.intel_runtime_pm*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @intel_rpm_raw_wakeref_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
