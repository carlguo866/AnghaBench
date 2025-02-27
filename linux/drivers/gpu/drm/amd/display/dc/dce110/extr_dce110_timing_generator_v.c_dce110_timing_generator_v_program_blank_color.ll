; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator_v.c_dce110_timing_generator_v_program_blank_color.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator_v.c_dce110_timing_generator_v_program_blank_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.tg_color = type { i32, i32, i32 }

@mmCRTCV_BLACK_COLOR = common dso_local global i32 0, align 4
@CRTCV_BLACK_COLOR = common dso_local global i32 0, align 4
@CRTC_BLACK_COLOR_B_CB = common dso_local global i32 0, align 4
@CRTC_BLACK_COLOR_G_Y = common dso_local global i32 0, align 4
@CRTC_BLACK_COLOR_R_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timing_generator*, %struct.tg_color*)* @dce110_timing_generator_v_program_blank_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_timing_generator_v_program_blank_color(%struct.timing_generator* %0, %struct.tg_color* %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.tg_color*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store %struct.tg_color* %1, %struct.tg_color** %4, align 8
  %7 = load i32, i32* @mmCRTCV_BLACK_COLOR, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %9 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @dm_read_reg(i32 %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %15 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CRTCV_BLACK_COLOR, align 4
  %18 = load i32, i32* @CRTC_BLACK_COLOR_B_CB, align 4
  %19 = call i32 @set_reg_field_value(i32 %13, i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %22 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CRTCV_BLACK_COLOR, align 4
  %25 = load i32, i32* @CRTC_BLACK_COLOR_G_Y, align 4
  %26 = call i32 @set_reg_field_value(i32 %20, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %29 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CRTCV_BLACK_COLOR, align 4
  %32 = load i32, i32* @CRTC_BLACK_COLOR_R_CR, align 4
  %33 = call i32 @set_reg_field_value(i32 %27, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %35 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @dm_write_reg(i32 %36, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
