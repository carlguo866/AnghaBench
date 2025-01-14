; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-encoder.c_vidioc_g_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-encoder.c_vidioc_g_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.saa7164_encoder_fh* }
%struct.saa7164_encoder_fh = type { %struct.saa7164_port* }
%struct.saa7164_port = type { i32, i32, i32, i32, %struct.saa7164_dev* }
%struct.saa7164_dev = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, i32 }

@V4L2_PIX_FMT_MPEG = common dso_local global i32 0, align 4
@DBGLVL_ENC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"VIDIOC_G_FMT: w: %d, h: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_g_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.saa7164_encoder_fh*, align 8
  %8 = alloca %struct.saa7164_port*, align 8
  %9 = alloca %struct.saa7164_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.saa7164_encoder_fh*, %struct.saa7164_encoder_fh** %11, align 8
  store %struct.saa7164_encoder_fh* %12, %struct.saa7164_encoder_fh** %7, align 8
  %13 = load %struct.saa7164_encoder_fh*, %struct.saa7164_encoder_fh** %7, align 8
  %14 = getelementptr inbounds %struct.saa7164_encoder_fh, %struct.saa7164_encoder_fh* %13, i32 0, i32 0
  %15 = load %struct.saa7164_port*, %struct.saa7164_port** %14, align 8
  store %struct.saa7164_port* %15, %struct.saa7164_port** %8, align 8
  %16 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %17 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %16, i32 0, i32 4
  %18 = load %struct.saa7164_dev*, %struct.saa7164_dev** %17, align 8
  store %struct.saa7164_dev* %18, %struct.saa7164_dev** %9, align 8
  %19 = load i32, i32* @V4L2_PIX_FMT_MPEG, align 4
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  store i32 %19, i32* %23, align 8
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %29 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %32 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  %35 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 8
  %39 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %40 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %44 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %47 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32 %45, i32* %49, align 8
  %50 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %51 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* @DBGLVL_ENC, align 4
  %58 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %59 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %62 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dprintk(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %63)
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
