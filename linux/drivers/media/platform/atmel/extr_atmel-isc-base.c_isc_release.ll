; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.isc_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.v4l2_subdev* }
%struct.v4l2_subdev = type { i32 }

@core = common dso_local global i32 0, align 4
@s_power = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @isc_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isc_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.isc_device*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = call %struct.isc_device* @video_drvdata(%struct.file* %7)
  store %struct.isc_device* %8, %struct.isc_device** %3, align 8
  %9 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %10 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  store %struct.v4l2_subdev* %13, %struct.v4l2_subdev** %4, align 8
  %14 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %15 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.file*, %struct.file** %2, align 8
  %18 = call i32 @v4l2_fh_is_singular_file(%struct.file* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.file*, %struct.file** %2, align 8
  %20 = call i32 @_vb2_fop_release(%struct.file* %19, i32* null)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %25 = load i32, i32* @core, align 4
  %26 = load i32, i32* @s_power, align 4
  %27 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %24, i32 %25, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %30 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local %struct.isc_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @_vb2_fop_release(%struct.file*, i32*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
