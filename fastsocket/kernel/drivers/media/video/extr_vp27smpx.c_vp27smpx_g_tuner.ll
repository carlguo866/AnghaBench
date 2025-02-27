; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vp27smpx.c_vp27smpx_g_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vp27smpx.c_vp27smpx_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_tuner = type { i32, i32, i32 }
%struct.vp27smpx_state = type { i32, i64 }

@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG2 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @vp27smpx_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp27smpx_g_tuner(%struct.v4l2_subdev* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_tuner*, align 8
  %6 = alloca %struct.vp27smpx_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.vp27smpx_state* @to_state(%struct.v4l2_subdev* %7)
  store %struct.vp27smpx_state* %8, %struct.vp27smpx_state** %6, align 8
  %9 = load %struct.vp27smpx_state*, %struct.vp27smpx_state** %6, align 8
  %10 = getelementptr inbounds %struct.vp27smpx_state, %struct.vp27smpx_state* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.vp27smpx_state*, %struct.vp27smpx_state** %6, align 8
  %16 = getelementptr inbounds %struct.vp27smpx_state, %struct.vp27smpx_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %21 = load i32, i32* @V4L2_TUNER_CAP_LANG1, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @V4L2_TUNER_CAP_LANG2, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %28 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %14, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.vp27smpx_state* @to_state(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
