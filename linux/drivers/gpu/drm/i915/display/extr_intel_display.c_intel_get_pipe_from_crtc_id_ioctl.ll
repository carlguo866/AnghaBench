; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_get_pipe_from_crtc_id_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_get_pipe_from_crtc_id_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_get_pipe_from_crtc_id = type { i32, i32 }
%struct.drm_crtc = type { i32 }
%struct.intel_crtc = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_get_pipe_from_crtc_id_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_get_pipe_from_crtc_id*, align 8
  %9 = alloca %struct.drm_crtc*, align 8
  %10 = alloca %struct.intel_crtc*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_i915_get_pipe_from_crtc_id*
  store %struct.drm_i915_get_pipe_from_crtc_id* %12, %struct.drm_i915_get_pipe_from_crtc_id** %8, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %15 = load %struct.drm_i915_get_pipe_from_crtc_id*, %struct.drm_i915_get_pipe_from_crtc_id** %8, align 8
  %16 = getelementptr inbounds %struct.drm_i915_get_pipe_from_crtc_id, %struct.drm_i915_get_pipe_from_crtc_id* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_crtc* @drm_crtc_find(%struct.drm_device* %13, %struct.drm_file* %14, i32 %17)
  store %struct.drm_crtc* %18, %struct.drm_crtc** %9, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %20 = icmp ne %struct.drm_crtc* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %32

24:                                               ; preds = %3
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %26 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %25)
  store %struct.intel_crtc* %26, %struct.intel_crtc** %10, align 8
  %27 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %28 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_i915_get_pipe_from_crtc_id*, %struct.drm_i915_get_pipe_from_crtc_id** %8, align 8
  %31 = getelementptr inbounds %struct.drm_i915_get_pipe_from_crtc_id, %struct.drm_i915_get_pipe_from_crtc_id* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %24, %21
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.drm_crtc* @drm_crtc_find(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
