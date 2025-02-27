; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_intel_detect_preproduction_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_intel_detect_preproduction_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@SKL_REVID_F0 = common dso_local global i32 0, align 4
@BXT_REVID_B_LAST = common dso_local global i32 0, align 4
@KBL_REVID_A0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"This is a pre-production stepping. It may not be fully functional.\0A\00", align 1
@TAINT_MACHINE_CHECK = common dso_local global i32 0, align 4
@LOCKDEP_STILL_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @intel_detect_preproduction_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_detect_preproduction_hw(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = call i32 @IS_HSW_EARLY_SDV(%struct.drm_i915_private* %4)
  %6 = load i32, i32* %3, align 4
  %7 = or i32 %6, %5
  store i32 %7, i32* %3, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = load i32, i32* @SKL_REVID_F0, align 4
  %10 = call i32 @IS_SKL_REVID(%struct.drm_i915_private* %8, i32 0, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %14 = load i32, i32* @BXT_REVID_B_LAST, align 4
  %15 = call i32 @IS_BXT_REVID(%struct.drm_i915_private* %13, i32 0, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %19 = load i32, i32* @KBL_REVID_A0, align 4
  %20 = call i32 @IS_KBL_REVID(%struct.drm_i915_private* %18, i32 0, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @TAINT_MACHINE_CHECK, align 4
  %28 = load i32, i32* @LOCKDEP_STILL_OK, align 4
  %29 = call i32 @add_taint(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @IS_HSW_EARLY_SDV(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_SKL_REVID(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @IS_BXT_REVID(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @IS_KBL_REVID(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @add_taint(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
