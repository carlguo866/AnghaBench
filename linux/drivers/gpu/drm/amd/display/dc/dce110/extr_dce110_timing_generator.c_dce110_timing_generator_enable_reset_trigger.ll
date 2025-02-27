; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_enable_reset_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_enable_reset_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dce110_timing_generator = type { i32 }

@TRIGGER_SOURCE_SELECT_LOGIC_ZERO = common dso_local global i32 0, align 4
@mmCRTC_V_SYNC_A_CNTL = common dso_local global i32 0, align 4
@CRTC_V_SYNC_A_CNTL = common dso_local global i32 0, align 4
@CRTC_V_SYNC_A_POL = common dso_local global i32 0, align 4
@mmCRTC_TRIGB_CNTL = common dso_local global i32 0, align 4
@TRIGGER_SOURCE_SELECT_GSL_GROUP0 = common dso_local global i32 0, align 4
@CRTC_TRIGB_CNTL = common dso_local global i32 0, align 4
@CRTC_TRIGB_SOURCE_SELECT = common dso_local global i32 0, align 4
@TRIGGER_POLARITY_SELECT_LOGIC_ZERO = common dso_local global i32 0, align 4
@CRTC_TRIGB_POLARITY_SELECT = common dso_local global i32 0, align 4
@CRTC_TRIGB_RISING_EDGE_DETECT_CNTL = common dso_local global i32 0, align 4
@CRTC_TRIGB_FALLING_EDGE_DETECT_CNTL = common dso_local global i32 0, align 4
@CRTC_TRIGB_FREQUENCY_SELECT = common dso_local global i32 0, align 4
@CRTC_TRIGB_DELAY = common dso_local global i32 0, align 4
@CRTC_TRIGB_CLEAR = common dso_local global i32 0, align 4
@mmCRTC_FORCE_COUNT_NOW_CNTL = common dso_local global i32 0, align 4
@CRTC_FORCE_COUNT_NOW_CNTL = common dso_local global i32 0, align 4
@CRTC_FORCE_COUNT_NOW_MODE = common dso_local global i32 0, align 4
@CRTC_FORCE_COUNT_NOW_TRIG_SEL = common dso_local global i32 0, align 4
@CRTC_FORCE_COUNT_NOW_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_timing_generator_enable_reset_trigger(%struct.timing_generator* %0, i32 %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dce110_timing_generator*, align 8
  %10 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @TRIGGER_SOURCE_SELECT_LOGIC_ZERO, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %13 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %12)
  store %struct.dce110_timing_generator* %13, %struct.dce110_timing_generator** %9, align 8
  %14 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %15 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @mmCRTC_V_SYNC_A_CNTL, align 4
  %18 = call i32 @CRTC_REG(i32 %17)
  %19 = call i32 @dm_read_reg(i32 %16, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @CRTC_V_SYNC_A_CNTL, align 4
  %22 = load i32, i32* @CRTC_V_SYNC_A_POL, align 4
  %23 = call i64 @get_reg_field_value(i32 %20, i32 %21, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %27

26:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %29 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @mmCRTC_TRIGB_CNTL, align 4
  %32 = call i32 @CRTC_REG(i32 %31)
  %33 = call i32 @dm_read_reg(i32 %30, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @TRIGGER_SOURCE_SELECT_GSL_GROUP0, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @CRTC_TRIGB_CNTL, align 4
  %38 = load i32, i32* @CRTC_TRIGB_SOURCE_SELECT, align 4
  %39 = call i32 @set_reg_field_value(i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @TRIGGER_POLARITY_SELECT_LOGIC_ZERO, align 4
  %42 = load i32, i32* @CRTC_TRIGB_CNTL, align 4
  %43 = load i32, i32* @CRTC_TRIGB_POLARITY_SELECT, align 4
  %44 = call i32 @set_reg_field_value(i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @CRTC_TRIGB_CNTL, align 4
  %48 = load i32, i32* @CRTC_TRIGB_RISING_EDGE_DETECT_CNTL, align 4
  %49 = call i32 @set_reg_field_value(i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @CRTC_TRIGB_CNTL, align 4
  %53 = load i32, i32* @CRTC_TRIGB_FALLING_EDGE_DETECT_CNTL, align 4
  %54 = call i32 @set_reg_field_value(i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @CRTC_TRIGB_CNTL, align 4
  %57 = load i32, i32* @CRTC_TRIGB_FREQUENCY_SELECT, align 4
  %58 = call i32 @set_reg_field_value(i32 %55, i32 0, i32 %56, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @CRTC_TRIGB_CNTL, align 4
  %61 = load i32, i32* @CRTC_TRIGB_DELAY, align 4
  %62 = call i32 @set_reg_field_value(i32 %59, i32 0, i32 %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @CRTC_TRIGB_CNTL, align 4
  %65 = load i32, i32* @CRTC_TRIGB_CLEAR, align 4
  %66 = call i32 @set_reg_field_value(i32 %63, i32 1, i32 %64, i32 %65)
  %67 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %68 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @mmCRTC_TRIGB_CNTL, align 4
  %71 = call i32 @CRTC_REG(i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @dm_write_reg(i32 %69, i32 %71, i32 %72)
  %74 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %75 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @mmCRTC_FORCE_COUNT_NOW_CNTL, align 4
  %78 = call i32 @CRTC_REG(i32 %77)
  %79 = call i32 @dm_read_reg(i32 %76, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @CRTC_FORCE_COUNT_NOW_CNTL, align 4
  %82 = load i32, i32* @CRTC_FORCE_COUNT_NOW_MODE, align 4
  %83 = call i32 @set_reg_field_value(i32 %80, i32 2, i32 %81, i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @CRTC_FORCE_COUNT_NOW_CNTL, align 4
  %86 = load i32, i32* @CRTC_FORCE_COUNT_NOW_TRIG_SEL, align 4
  %87 = call i32 @set_reg_field_value(i32 %84, i32 1, i32 %85, i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @CRTC_FORCE_COUNT_NOW_CNTL, align 4
  %90 = load i32, i32* @CRTC_FORCE_COUNT_NOW_CLEAR, align 4
  %91 = call i32 @set_reg_field_value(i32 %88, i32 1, i32 %89, i32 %90)
  %92 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %93 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @mmCRTC_FORCE_COUNT_NOW_CNTL, align 4
  %96 = call i32 @CRTC_REG(i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @dm_write_reg(i32 %94, i32 %96, i32 %97)
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @CRTC_REG(i32) #1

declare dso_local i64 @get_reg_field_value(i32, i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
