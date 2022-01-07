; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_overlay.c_intel_panel_fitter_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_overlay.c_intel_panel_fitter_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@PFIT_CONTROL = common dso_local global i32 0, align 4
@PFIT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @intel_panel_fitter_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_panel_fitter_pipe(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call i64 @IS_I830(%struct.drm_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %30

13:                                               ; preds = %1
  %14 = load i32, i32* @PFIT_CONTROL, align 4
  %15 = call i32 @I915_READ(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PFIT_ENABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %30

21:                                               ; preds = %13
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = call i64 @IS_GEN4(%struct.drm_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 29
  %28 = and i32 %27, 3
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %25, %20, %12
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @IS_I830(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_GEN4(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
