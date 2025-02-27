; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_pll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_pll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PLL_ENABLE = common dso_local global i32 0, align 4
@PLL_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"PLL %d locked\0A\00", align 1
@PLL_POWER_ENABLE = common dso_local global i32 0, align 4
@PLL_POWER_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"PLL %d Power not disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_shared_dpll*, i32)* @icl_pll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_pll_disable(%struct.drm_i915_private* %0, %struct.intel_shared_dpll* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_shared_dpll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_shared_dpll* %1, %struct.intel_shared_dpll** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @I915_READ(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @PLL_ENABLE, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @I915_WRITE(i32 %14, i32 %15)
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PLL_LOCK, align 4
  %20 = call i64 @intel_de_wait_for_clear(%struct.drm_i915_private* %17, i32 %18, i32 %19, i32 1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %24 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %22, %3
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @I915_READ(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @PLL_POWER_ENABLE, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @I915_WRITE(i32 %36, i32 %37)
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @PLL_POWER_STATE, align 4
  %42 = call i64 @intel_de_wait_for_clear(%struct.drm_i915_private* %39, i32 %40, i32 %41, i32 1)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %29
  %45 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %46 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %44, %29
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @intel_de_wait_for_clear(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
