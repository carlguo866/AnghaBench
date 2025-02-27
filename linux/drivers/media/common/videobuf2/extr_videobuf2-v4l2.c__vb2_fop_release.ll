; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c__vb2_fop_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c__vb2_fop_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32* }
%struct.mutex = type { i32 }
%struct.video_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_vb2_fop_release(%struct.file* %0, %struct.mutex* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.mutex*, align 8
  %5 = alloca %struct.video_device*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.mutex* %1, %struct.mutex** %4, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.video_device* @video_devdata(%struct.file* %6)
  store %struct.video_device* %7, %struct.video_device** %5, align 8
  %8 = load %struct.mutex*, %struct.mutex** %4, align 8
  %9 = icmp ne %struct.mutex* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.mutex*, %struct.mutex** %4, align 8
  %12 = call i32 @mutex_lock(%struct.mutex* %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.file*, %struct.file** %3, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.video_device*, %struct.video_device** %5, align 8
  %18 = getelementptr inbounds %struct.video_device, %struct.video_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %16, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load %struct.video_device*, %struct.video_device** %5, align 8
  %25 = getelementptr inbounds %struct.video_device, %struct.video_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i32 @vb2_queue_release(%struct.TYPE_2__* %26)
  %28 = load %struct.video_device*, %struct.video_device** %5, align 8
  %29 = getelementptr inbounds %struct.video_device, %struct.video_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %23, %13
  %33 = load %struct.mutex*, %struct.mutex** %4, align 8
  %34 = icmp ne %struct.mutex* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.mutex*, %struct.mutex** %4, align 8
  %37 = call i32 @mutex_unlock(%struct.mutex* %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.file*, %struct.file** %3, align 8
  %40 = call i32 @v4l2_fh_release(%struct.file* %39)
  ret i32 %40
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i32 @vb2_queue_release(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
