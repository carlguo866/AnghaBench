; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_phy_is_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_phy_is_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@PHY_D = common dso_local global i32 0, align 4
@PHY_I = common dso_local global i32 0, align 4
@PHY_C = common dso_local global i32 0, align 4
@PHY_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_phy_is_tc(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %7 = call i32 @INTEL_GEN(%struct.drm_i915_private* %6)
  %8 = icmp sge i32 %7, 12
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @PHY_D, align 4
  %12 = icmp uge i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PHY_I, align 4
  %16 = icmp ule i32 %14, %15
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ false, %9 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %40

20:                                               ; preds = %2
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %22 = call i32 @INTEL_GEN(%struct.drm_i915_private* %21)
  %23 = icmp sge i32 %22, 11
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %26 = call i32 @IS_ELKHARTLAKE(%struct.drm_i915_private* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @PHY_C, align 4
  %31 = icmp uge i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @PHY_F, align 4
  %35 = icmp ule i32 %33, %34
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i1 [ false, %28 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %24, %20
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %36, %17
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_ELKHARTLAKE(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
