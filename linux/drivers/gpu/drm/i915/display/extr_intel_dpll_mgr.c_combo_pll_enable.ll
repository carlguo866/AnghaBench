; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_combo_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_combo_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_shared_dpll = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@DPLL_ID_EHL_DPLL4 = common dso_local global i64 0, align 8
@POWER_DOMAIN_DPLL_DC_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_shared_dpll*)* @combo_pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @combo_pll_enable(%struct.drm_i915_private* %0, %struct.intel_shared_dpll* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_shared_dpll*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_shared_dpll* %1, %struct.intel_shared_dpll** %4, align 8
  %6 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %7 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @CNL_DPLL_ENABLE(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = call i64 @IS_ELKHARTLAKE(%struct.drm_i915_private* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %17 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DPLL_ID_EHL_DPLL4, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = call i32 @MG_PLL_ENABLE(i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = load i32, i32* @POWER_DOMAIN_DPLL_DC_OFF, align 4
  %27 = call i32 @intel_display_power_get(%struct.drm_i915_private* %25, i32 %26)
  %28 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %29 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %23, %15, %2
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %32 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @icl_pll_power_enable(%struct.drm_i915_private* %31, %struct.intel_shared_dpll* %32, i32 %33)
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %36 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %37 = call i32 @icl_dpll_write(%struct.drm_i915_private* %35, %struct.intel_shared_dpll* %36)
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @icl_pll_enable(%struct.drm_i915_private* %38, %struct.intel_shared_dpll* %39, i32 %40)
  ret void
}

declare dso_local i32 @CNL_DPLL_ENABLE(i64) #1

declare dso_local i64 @IS_ELKHARTLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @MG_PLL_ENABLE(i32) #1

declare dso_local i32 @intel_display_power_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @icl_pll_power_enable(%struct.drm_i915_private*, %struct.intel_shared_dpll*, i32) #1

declare dso_local i32 @icl_dpll_write(%struct.drm_i915_private*, %struct.intel_shared_dpll*) #1

declare dso_local i32 @icl_pll_enable(%struct.drm_i915_private*, %struct.intel_shared_dpll*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
