; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_driver_lastclose.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_driver_lastclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32* }

@DRIVER_MODESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_driver_lastclose(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %24

10:                                               ; preds = %1
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = load i32, i32* @DRIVER_MODESET, align 4
  %13 = call i64 @drm_core_check_feature(%struct.drm_device* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %17 = call i32 @intel_fb_restore_mode(%struct.drm_device* %16)
  %18 = call i32 (...) @vga_switcheroo_process_delayed_switch()
  br label %24

19:                                               ; preds = %10
  %20 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %21 = call i32 @i915_gem_lastclose(%struct.drm_device* %20)
  %22 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %23 = call i32 @i915_dma_cleanup(%struct.drm_device* %22)
  br label %24

24:                                               ; preds = %19, %15, %9
  ret void
}

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @intel_fb_restore_mode(%struct.drm_device*) #1

declare dso_local i32 @vga_switcheroo_process_delayed_switch(...) #1

declare dso_local i32 @i915_gem_lastclose(%struct.drm_device*) #1

declare dso_local i32 @i915_dma_cleanup(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
