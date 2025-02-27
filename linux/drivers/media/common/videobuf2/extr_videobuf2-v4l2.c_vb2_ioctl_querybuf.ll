; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_ioctl_querybuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_ioctl_querybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i32 }
%struct.video_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_ioctl_querybuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_buffer*, align 8
  %7 = alloca %struct.video_device*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.video_device* @video_devdata(%struct.file* %8)
  store %struct.video_device* %9, %struct.video_device** %7, align 8
  %10 = load %struct.video_device*, %struct.video_device** %7, align 8
  %11 = getelementptr inbounds %struct.video_device, %struct.video_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %14 = call i32 @vb2_querybuf(i32 %12, %struct.v4l2_buffer* %13)
  ret i32 %14
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @vb2_querybuf(i32, %struct.v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
