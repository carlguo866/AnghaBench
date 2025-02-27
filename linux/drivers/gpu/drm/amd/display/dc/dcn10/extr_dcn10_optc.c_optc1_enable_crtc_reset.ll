; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_enable_crtc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_enable_crtc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.crtc_trigger_info = type { i32, i32 }
%struct.optc = type { i32 }

@OTG_TRIGA_CNTL = common dso_local global i32 0, align 4
@OTG_TRIGA_SOURCE_SELECT = common dso_local global i32 0, align 4
@OTG_TRIGA_SOURCE_PIPE_SELECT = common dso_local global i32 0, align 4
@OTG_TRIGA_RISING_EDGE_DETECT_CNTL = common dso_local global i32 0, align 4
@OTG_TRIGA_FALLING_EDGE_DETECT_CNTL = common dso_local global i32 0, align 4
@OTG_VERT_SYNC_CONTROL = common dso_local global i32 0, align 4
@OTG_AUTO_FORCE_VSYNC_MODE = common dso_local global i32 0, align 4
@OTG_FORCE_COUNT_NOW_CNTL = common dso_local global i32 0, align 4
@OTG_FORCE_COUNT_NOW_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optc1_enable_crtc_reset(%struct.timing_generator* %0, i32 %1, %struct.crtc_trigger_info* %2) #0 {
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crtc_trigger_info*, align 8
  %7 = alloca %struct.optc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.crtc_trigger_info* %2, %struct.crtc_trigger_info** %6, align 8
  %10 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %11 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %10)
  store %struct.optc* %11, %struct.optc** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.crtc_trigger_info*, %struct.crtc_trigger_info** %6, align 8
  %13 = getelementptr inbounds %struct.crtc_trigger_info, %struct.crtc_trigger_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %17 [
    i32 130, label %15
    i32 131, label %16
  ]

15:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %17

16:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %17

17:                                               ; preds = %3, %16, %15
  %18 = load i32, i32* @OTG_TRIGA_CNTL, align 4
  %19 = load i32, i32* @OTG_TRIGA_SOURCE_SELECT, align 4
  %20 = load i32, i32* @OTG_TRIGA_SOURCE_PIPE_SELECT, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @OTG_TRIGA_RISING_EDGE_DETECT_CNTL, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @OTG_TRIGA_FALLING_EDGE_DETECT_CNTL, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @REG_SET_4(i32 %18, i32 0, i32 %19, i32 20, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.crtc_trigger_info*, %struct.crtc_trigger_info** %6, align 8
  %28 = getelementptr inbounds %struct.crtc_trigger_info, %struct.crtc_trigger_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %38 [
    i32 129, label %30
    i32 128, label %34
  ]

30:                                               ; preds = %17
  %31 = load i32, i32* @OTG_VERT_SYNC_CONTROL, align 4
  %32 = load i32, i32* @OTG_AUTO_FORCE_VSYNC_MODE, align 4
  %33 = call i32 @REG_SET(i32 %31, i32 0, i32 %32, i32 1)
  br label %38

34:                                               ; preds = %17
  %35 = load i32, i32* @OTG_FORCE_COUNT_NOW_CNTL, align 4
  %36 = load i32, i32* @OTG_FORCE_COUNT_NOW_MODE, align 4
  %37 = call i32 @REG_SET(i32 %35, i32 0, i32 %36, i32 2)
  br label %38

38:                                               ; preds = %17, %34, %30
  ret void
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @REG_SET_4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
