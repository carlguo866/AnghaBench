; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_set_early_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_set_early_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dce110_timing_generator = type { i32 }

@mmCRTC_CONTROL = common dso_local global i32 0, align 4
@CRTC_CONTROL = common dso_local global i32 0, align 4
@CRTC_HBLANK_EARLY_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_timing_generator_set_early_control(%struct.timing_generator* %0, i32 %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dce110_timing_generator*, align 8
  %7 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %9 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %8)
  store %struct.dce110_timing_generator* %9, %struct.dce110_timing_generator** %6, align 8
  %10 = load i32, i32* @mmCRTC_CONTROL, align 4
  %11 = call i32 @CRTC_REG(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %13 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @dm_read_reg(i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @CRTC_CONTROL, align 4
  %20 = load i32, i32* @CRTC_HBLANK_EARLY_CONTROL, align 4
  %21 = call i32 @set_reg_field_value(i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %23 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dm_write_reg(i32 %24, i32 %25, i32 %26)
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @CRTC_REG(i32) #1

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
