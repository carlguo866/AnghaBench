; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-cadet.c_vidioc_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-cadet.c_vidioc_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.cadet = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.cadet*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.cadet* @video_drvdata(%struct.file* %9)
  store %struct.cadet* %10, %struct.cadet** %8, align 8
  %11 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %26 [
    i32 129, label %14
    i32 128, label %21
  ]

14:                                               ; preds = %3
  %15 = load %struct.cadet*, %struct.cadet** %8, align 8
  %16 = call i32 @cadet_getvol(%struct.cadet* %15)
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %29

21:                                               ; preds = %3
  %22 = load %struct.cadet*, %struct.cadet** %8, align 8
  %23 = call i32 @cadet_getvol(%struct.cadet* %22)
  %24 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %30

29:                                               ; preds = %21, %14
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.cadet* @video_drvdata(%struct.file*) #1

declare dso_local i32 @cadet_getvol(%struct.cadet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
