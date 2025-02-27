; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_s_jpegcomp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_s_jpegcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_jpegcompression = type { i32, i32 }

@V4L2_JPEG_MARKER_DHT = common dso_local global i32 0, align 4
@V4L2_JPEG_MARKER_DQT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_jpegcompression*)* @vidioc_s_jpegcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_jpegcomp(%struct.file* %0, i8* %1, %struct.v4l2_jpegcompression* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_jpegcompression*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_jpegcompression* %2, %struct.v4l2_jpegcompression** %7, align 8
  %8 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 50
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @V4L2_JPEG_MARKER_DHT, align 4
  %17 = load i32, i32* @V4L2_JPEG_MARKER_DQT, align 4
  %18 = or i32 %16, %17
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %12, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %24

23:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
