; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_update_sprite_watermarks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_update_sprite_watermarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.drm_device.0*, i32, i32, i32)* }
%struct.drm_device.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_update_sprite_watermarks(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %9, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.drm_device.0*, i32, i32, i32)*, i32 (%struct.drm_device.0*, i32, i32, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.drm_device.0*, i32, i32, i32)* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.drm_device.0*, i32, i32, i32)*, i32 (%struct.drm_device.0*, i32, i32, i32)** %21, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = bitcast %struct.drm_device* %23 to %struct.drm_device.0*
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 %22(%struct.drm_device.0* %24, i32 %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %18, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
