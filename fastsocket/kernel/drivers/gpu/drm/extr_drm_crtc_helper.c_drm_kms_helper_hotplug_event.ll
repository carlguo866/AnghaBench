; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc_helper.c_drm_kms_helper_hotplug_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc_helper.c_drm_kms_helper_hotplug_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.drm_device*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_kms_helper_hotplug_event(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %3 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %4 = call i32 @drm_sysfs_hotplug_event(%struct.drm_device* %3)
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %9, align 8
  %11 = icmp ne i32 (%struct.drm_device*)* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %17, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %20 = call i32 %18(%struct.drm_device* %19)
  br label %21

21:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @drm_sysfs_hotplug_event(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
