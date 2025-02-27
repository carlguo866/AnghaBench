; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_cannonlake_get_ddi_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_cannonlake_get_ddi_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_crtc_state = type { i32 }

@DPCLKA_CFGCR0 = common dso_local global i32 0, align 4
@SKL_DPLL0 = common dso_local global i32 0, align 4
@SKL_DPLL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32, %struct.intel_crtc_state*)* @cannonlake_get_ddi_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cannonlake_get_ddi_pll(%struct.drm_i915_private* %0, i32 %1, %struct.intel_crtc_state* %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.intel_crtc_state* %2, %struct.intel_crtc_state** %6, align 8
  %9 = load i32, i32* @DPCLKA_CFGCR0, align 4
  %10 = call i32 @I915_READ(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(i32 %11)
  %13 = and i32 %10, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(i32 %15)
  %17 = ashr i32 %14, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SKL_DPLL0, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SKL_DPLL2, align 4
  %24 = icmp ugt i32 %22, %23
  br label %25

25:                                               ; preds = %21, %3
  %26 = phi i1 [ true, %3 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %37

31:                                               ; preds = %25
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @intel_get_shared_dpll_by_id(%struct.drm_i915_private* %32, i32 %33)
  %35 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %36 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(i32) #1

declare dso_local i32 @DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @intel_get_shared_dpll_by_id(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
