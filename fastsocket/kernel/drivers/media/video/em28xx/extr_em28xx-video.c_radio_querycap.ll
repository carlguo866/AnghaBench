; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_radio_querycap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_radio_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32, i32 }
%struct.em28xx = type { i64, i32 }
%struct.em28xx_fh = type { %struct.em28xx* }

@.str = private unnamed_addr constant [7 x i8] c"em28xx\00", align 1
@em28xx_boards = common dso_local global %struct.TYPE_2__* null, align 8
@EM28XX_VERSION_CODE = common dso_local global i32 0, align 4
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @radio_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radio_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.em28xx*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.em28xx_fh*
  %10 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %9, i32 0, i32 0
  %11 = load %struct.em28xx*, %struct.em28xx** %10, align 8
  store %struct.em28xx* %11, %struct.em28xx** %7, align 8
  %12 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strlcpy(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  %16 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @em28xx_boards, align 8
  %20 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %21 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strlcpy(i32 %18, i8* %25, i32 4)
  %27 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %28 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_make_path(i32 %29, i32 %32, i32 4)
  %34 = load i32, i32* @EM28XX_VERSION_CODE, align 4
  %35 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %38 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  ret i32 0
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @usb_make_path(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
