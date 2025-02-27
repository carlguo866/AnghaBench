; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_context.c_drm_legacy_ctxbitmap_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_context.c_drm_legacy_ctxbitmap_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32 }

@DRIVER_KMS_LEGACY_CONTEXT = common dso_local global i32 0, align 4
@DRIVER_LEGACY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_legacy_ctxbitmap_cleanup(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %3 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %4 = load i32, i32* @DRIVER_KMS_LEGACY_CONTEXT, align 4
  %5 = call i32 @drm_core_check_feature(%struct.drm_device* %3, i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = load i32, i32* @DRIVER_LEGACY, align 4
  %10 = call i32 @drm_core_check_feature(%struct.drm_device* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %23

13:                                               ; preds = %7, %1
  %14 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 1
  %19 = call i32 @idr_destroy(i32* %18)
  %20 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  br label %23

23:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
