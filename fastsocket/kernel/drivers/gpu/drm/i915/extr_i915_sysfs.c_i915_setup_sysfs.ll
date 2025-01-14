; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_sysfs.c_i915_setup_sysfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_sysfs.c_i915_setup_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@dpf_attrs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"l3 parity sysfs setup failed\0A\00", align 1
@gen6_attr_group = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"gen6 sysfs setup failed\0A\00", align 1
@rc6_attr_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_setup_sysfs(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = call i64 @HAS_L3_GPU_CACHE(%struct.drm_device* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @device_create_bin_file(%struct.TYPE_5__* %11, i32* @dpf_attrs)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %7
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %20 = call %struct.TYPE_6__* @INTEL_INFO(%struct.drm_device* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 6
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 @sysfs_merge_group(i32* %29, i32* @gen6_attr_group)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %24
  br label %36

36:                                               ; preds = %35, %18
  ret void
}

declare dso_local i64 @HAS_L3_GPU_CACHE(%struct.drm_device*) #1

declare dso_local i32 @device_create_bin_file(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.TYPE_6__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @sysfs_merge_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
