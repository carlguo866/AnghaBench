; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_disable_fec_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_disable_fec_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_i915_private = type { i32 }

@DP_TP_CTL_FEC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @intel_ddi_disable_fec_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ddi_disable_fec_state(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %8 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %14 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %36

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @DP_TP_CTL(i32 %22)
  %24 = call i32 @I915_READ(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @DP_TP_CTL_FEC_ENABLE, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @DP_TP_CTL(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @I915_WRITE(i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @DP_TP_CTL(i32 %33)
  %35 = call i32 @POSTING_READ(i32 %34)
  br label %36

36:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DP_TP_CTL(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
