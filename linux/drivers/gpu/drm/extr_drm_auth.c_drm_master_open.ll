; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_auth.c_drm_master_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_auth.c_drm_master_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_master_open(%struct.drm_file* %0) #0 {
  %2 = alloca %struct.drm_file*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %2, align 8
  %5 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %6 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %20 = call i32 @drm_new_set_master(%struct.drm_device* %18, %struct.drm_file* %19)
  store i32 %20, i32* %4, align 4
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @drm_master_get(i32 %24)
  %26 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  %27 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %21, %17
  %29 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_new_set_master(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @drm_master_get(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
