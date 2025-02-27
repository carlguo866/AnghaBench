; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_tea575x-tuner.c_vidioc_g_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_tea575x-tuner.c_vidioc_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"FM\00", align 1
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@FREQ_LO = common dso_local global i32 0, align 4
@FREQ_HI = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LOW = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %8 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %42

15:                                               ; preds = %3
  %16 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strcpy(i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %21 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @FREQ_LO, align 4
  %24 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @FREQ_HI, align 4
  %27 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %30 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @V4L2_TUNER_CAP_LOW, align 4
  %35 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  %38 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %40, i32 0, i32 2
  store i32 65535, i32* %41, align 4
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %15, %12
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
