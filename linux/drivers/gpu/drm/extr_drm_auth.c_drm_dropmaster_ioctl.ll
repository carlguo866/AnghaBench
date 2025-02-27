; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_auth.c_drm_dropmaster_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_auth.c_drm_dropmaster_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32 }
%struct.drm_file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Attempt to drop lessee %d as master\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dropmaster_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_file* %2, %struct.drm_file** %6, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %14 = call i32 @drm_is_current_master(%struct.drm_file* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %43

17:                                               ; preds = %3
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %43

23:                                               ; preds = %17
  %24 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %25 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %32 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @DRM_DEBUG_LEASE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %43

39:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  %40 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %41 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %42 = call i32 @drm_drop_master(%struct.drm_device* %40, %struct.drm_file* %41)
  br label %43

43:                                               ; preds = %39, %30, %22, %16
  %44 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_is_current_master(%struct.drm_file*) #1

declare dso_local i32 @DRM_DEBUG_LEASE(i8*, i32) #1

declare dso_local i32 @drm_drop_master(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
