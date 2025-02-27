; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-empress.c_empress_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-empress.c_empress_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.saa7134_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32 }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_FIXED = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_MPEG = common dso_local global i32 0, align 4
@TS_PACKET_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @empress_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @empress_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.saa7134_dev*, align 8
  %8 = alloca %struct.v4l2_subdev_pad_config, align 4
  %9 = alloca %struct.v4l2_subdev_format, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.saa7134_dev* @video_drvdata(%struct.file* %10)
  store %struct.saa7134_dev* %11, %struct.saa7134_dev** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 1
  %14 = load i32, i32* @V4L2_SUBDEV_FORMAT_TRY, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 0
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* @MEDIA_BUS_FMT_FIXED, align 4
  %20 = call i32 @v4l2_fill_mbus_format(i32* %15, %struct.TYPE_7__* %18, i32 %19)
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %22 = load i32, i32* @pad, align 4
  %23 = load i32, i32* @set_fmt, align 4
  %24 = call i32 @saa_call_all(%struct.saa7134_dev* %21, i32 %22, i32 %23, %struct.v4l2_subdev_pad_config* %8, %struct.v4l2_subdev_format* %9)
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 0
  %29 = call i32 @v4l2_fill_pix_format(%struct.TYPE_7__* %27, i32* %28)
  %30 = load i32, i32* @V4L2_PIX_FMT_MPEG, align 4
  %31 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i32 %30, i32* %34, align 8
  %35 = load i32, i32* @TS_PACKET_SIZE, align 4
  %36 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %37 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %35, %39
  %41 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  %45 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  ret i32 0
}

declare dso_local %struct.saa7134_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_fill_mbus_format(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @saa_call_all(%struct.saa7134_dev*, i32, i32, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @v4l2_fill_pix_format(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
