; ModuleID = '/home/carl/AnghaBench/linux/samples/v4l/extr_v4l2-pci-skeleton.c_skeleton_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/samples/v4l/extr_v4l2-pci-skeleton.c_skeleton_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i64 }
%struct.skeleton = type { i32 }

@V4L2_PIX_FMT_YUYV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @skeleton_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skeleton_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.skeleton*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.skeleton* @video_drvdata(%struct.file* %10)
  store %struct.skeleton* %11, %struct.skeleton** %8, align 8
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.v4l2_pix_format* %14, %struct.v4l2_pix_format** %9, align 8
  %15 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %16 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_PIX_FMT_YUYV, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %27

23:                                               ; preds = %3
  %24 = load %struct.skeleton*, %struct.skeleton** %8, align 8
  %25 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %26 = call i32 @skeleton_fill_pix_format(%struct.skeleton* %24, %struct.v4l2_pix_format* %25)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.skeleton* @video_drvdata(%struct.file*) #1

declare dso_local i32 @skeleton_fill_pix_format(%struct.skeleton*, %struct.v4l2_pix_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
