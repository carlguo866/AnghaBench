; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_enable_pipe_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_enable_pipe_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.drm_crtc }
%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_encoder = type { i32 }

@TRANSCODER_EDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_ddi_enable_pipe_clock(%struct.intel_crtc* %0) #0 {
  %2 = alloca %struct.intel_crtc*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %2, align 8
  %8 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %8, i32 0, i32 1
  store %struct.drm_crtc* %9, %struct.drm_crtc** %3, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %4, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %16 = call %struct.intel_encoder* @intel_ddi_get_crtc_encoder(%struct.drm_crtc* %15)
  store %struct.intel_encoder* %16, %struct.intel_encoder** %5, align 8
  %17 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %18 = call i32 @intel_ddi_get_encoder_port(%struct.intel_encoder* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %20 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @TRANSCODER_EDP, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @TRANS_CLK_SEL(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @TRANS_CLK_SEL_PORT(i32 %28)
  %30 = call i32 @I915_WRITE(i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %25, %1
  ret void
}

declare dso_local %struct.intel_encoder* @intel_ddi_get_crtc_encoder(%struct.drm_crtc*) #1

declare dso_local i32 @intel_ddi_get_encoder_port(%struct.intel_encoder*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @TRANS_CLK_SEL(i32) #1

declare dso_local i32 @TRANS_CLK_SEL_PORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
