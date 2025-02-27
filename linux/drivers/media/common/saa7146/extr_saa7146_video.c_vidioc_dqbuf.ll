; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_vidioc_dqbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_vidioc_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64 }
%struct.saa7146_fh = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vidioc_dqbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_dqbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.saa7146_fh*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.saa7146_fh*
  store %struct.saa7146_fh* %10, %struct.saa7146_fh** %8, align 8
  %11 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %18 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %17, i32 0, i32 1
  %19 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @O_NONBLOCK, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @videobuf_dqbuf(i32* %18, %struct.v4l2_buffer* %19, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %45

26:                                               ; preds = %3
  %27 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %34 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %33, i32 0, i32 0
  %35 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @O_NONBLOCK, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @videobuf_dqbuf(i32* %34, %struct.v4l2_buffer* %35, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %45

42:                                               ; preds = %26
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %32, %16
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @videobuf_dqbuf(i32*, %struct.v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
