; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi_pll.c_vlv_dsi_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi_pll.c_vlv_dsi_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CCK_REG_DSI_PLL_CONTROL = common dso_local global i32 0, align 4
@CCK_REG_DSI_PLL_DIVIDER = common dso_local global i32 0, align 4
@DSI_PLL_VCO_EN = common dso_local global i32 0, align 4
@DSI_PLL_LOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"DSI PLL lock failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"DSI PLL locked\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlv_dsi_pll_enable(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %6 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %7 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.drm_i915_private* @to_i915(i32 %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %5, align 8
  %11 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %13 = call i32 @vlv_cck_get(%struct.drm_i915_private* %12)
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %15 = load i32, i32* @CCK_REG_DSI_PLL_CONTROL, align 4
  %16 = call i32 @vlv_cck_write(%struct.drm_i915_private* %14, i32 %15, i32 0)
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %18 = load i32, i32* @CCK_REG_DSI_PLL_DIVIDER, align 4
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @vlv_cck_write(%struct.drm_i915_private* %17, i32 %18, i32 %22)
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %25 = load i32, i32* @CCK_REG_DSI_PLL_CONTROL, align 4
  %26 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %27 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DSI_PLL_VCO_EN, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = call i32 @vlv_cck_write(%struct.drm_i915_private* %24, i32 %25, i32 %32)
  %34 = call i32 @usleep_range(i32 10, i32 50)
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %36 = load i32, i32* @CCK_REG_DSI_PLL_CONTROL, align 4
  %37 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %38 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @vlv_cck_write(%struct.drm_i915_private* %35, i32 %36, i32 %40)
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %43 = load i32, i32* @CCK_REG_DSI_PLL_CONTROL, align 4
  %44 = call i32 @vlv_cck_read(%struct.drm_i915_private* %42, i32 %43)
  %45 = load i32, i32* @DSI_PLL_LOCK, align 4
  %46 = and i32 %44, %45
  %47 = call i64 @wait_for(i32 %46, i32 20)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %2
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %51 = call i32 @vlv_cck_put(%struct.drm_i915_private* %50)
  %52 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %57

53:                                               ; preds = %2
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %55 = call i32 @vlv_cck_put(%struct.drm_i915_private* %54)
  %56 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %49
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @vlv_cck_get(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_cck_write(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @vlv_cck_read(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @vlv_cck_put(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
