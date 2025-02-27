; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-trust.c_vidioc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-trust.c_vidioc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.trust = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.trust*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.trust* @video_drvdata(%struct.file* %9)
  store %struct.trust* %10, %struct.trust** %8, align 8
  %11 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %38 [
    i32 130, label %14
    i32 128, label %20
    i32 131, label %26
    i32 129, label %32
  ]

14:                                               ; preds = %3
  %15 = load %struct.trust*, %struct.trust** %8, align 8
  %16 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @tr_setmute(%struct.trust* %15, i32 %18)
  store i32 0, i32* %4, align 4
  br label %41

20:                                               ; preds = %3
  %21 = load %struct.trust*, %struct.trust** %8, align 8
  %22 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @tr_setvol(%struct.trust* %21, i32 %24)
  store i32 0, i32* %4, align 4
  br label %41

26:                                               ; preds = %3
  %27 = load %struct.trust*, %struct.trust** %8, align 8
  %28 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @tr_setbass(%struct.trust* %27, i32 %30)
  store i32 0, i32* %4, align 4
  br label %41

32:                                               ; preds = %3
  %33 = load %struct.trust*, %struct.trust** %8, align 8
  %34 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @tr_settreble(%struct.trust* %33, i32 %36)
  store i32 0, i32* %4, align 4
  br label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %32, %26, %20, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.trust* @video_drvdata(%struct.file*) #1

declare dso_local i32 @tr_setmute(%struct.trust*, i32) #1

declare dso_local i32 @tr_setvol(%struct.trust*, i32) #1

declare dso_local i32 @tr_setbass(%struct.trust*, i32) #1

declare dso_local i32 @tr_settreble(%struct.trust*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
