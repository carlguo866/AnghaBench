; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_flush_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_flush_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @i915_flush_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_flush_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %10 = load i32, i32* @DRIVER_MODESET, align 4
  %11 = call i64 @drm_core_check_feature(%struct.drm_device* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %29

16:                                               ; preds = %3
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %19 = call i32 @RING_LOCK_TEST_WITH_RETURN(%struct.drm_device* %17, %struct.drm_file* %18)
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = call i32 @i915_quiescent(%struct.drm_device* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %16, %13
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @RING_LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i915_quiescent(%struct.drm_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
