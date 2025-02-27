; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_enable_tv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_enable_tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_6__ = type { i32 }

@TV_CTL = common dso_local global i32 0, align 4
@TV_ENC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_enable_tv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_enable_tv(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %9 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %10 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %14 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %8, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_6__* @to_intel_crtc(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @intel_wait_for_vblank(%struct.drm_i915_private* %15, i32 %22)
  %24 = load i32, i32* @TV_CTL, align 4
  %25 = load i32, i32* @TV_CTL, align 4
  %26 = call i32 @I915_READ(i32 %25)
  %27 = load i32, i32* @TV_ENC_ENABLE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @I915_WRITE(i32 %24, i32 %28)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.TYPE_6__* @to_intel_crtc(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
