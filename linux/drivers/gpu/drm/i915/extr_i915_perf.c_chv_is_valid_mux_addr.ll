; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_chv_is_valid_mux_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_chv_is_valid_mux_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @chv_is_valid_mux_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chv_is_valid_mux_addr(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @gen7_is_valid_mux_addr(%struct.drm_i915_private* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 1581824
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %13, 1581988
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i1 [ false, %9 ], [ %14, %12 ]
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi i1 [ true, %2 ], [ %16, %15 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i64 @gen7_is_valid_mux_addr(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
