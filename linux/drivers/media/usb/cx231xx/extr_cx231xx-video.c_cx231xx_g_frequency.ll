; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_g_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_g_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32, i64 }
%struct.cx231xx_fh = type { %struct.cx231xx* }
%struct.cx231xx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_g_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.cx231xx_fh*, align 8
  %9 = alloca %struct.cx231xx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.cx231xx_fh*
  store %struct.cx231xx_fh* %11, %struct.cx231xx_fh** %8, align 8
  %12 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %13 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %12, i32 0, i32 0
  %14 = load %struct.cx231xx*, %struct.cx231xx** %13, align 8
  store %struct.cx231xx* %14, %struct.cx231xx** %9, align 8
  %15 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %28

22:                                               ; preds = %3
  %23 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %24 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %22, %19
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
