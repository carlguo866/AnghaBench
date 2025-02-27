; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_color-correction-filter.c_color_correction_filter_defaults.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_color-correction-filter.c_color_correction_filter_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SETTING_GAMMA = common dso_local global i32 0, align 4
@SETTING_CONTRAST = common dso_local global i32 0, align 4
@SETTING_BRIGHTNESS = common dso_local global i32 0, align 4
@SETTING_SATURATION = common dso_local global i32 0, align 4
@SETTING_HUESHIFT = common dso_local global i32 0, align 4
@SETTING_OPACITY = common dso_local global i32 0, align 4
@SETTING_COLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @color_correction_filter_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @color_correction_filter_defaults(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @SETTING_GAMMA, align 4
  %5 = call i32 @obs_data_set_default_double(i32* %3, i32 %4, double 0.000000e+00)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @SETTING_CONTRAST, align 4
  %8 = call i32 @obs_data_set_default_double(i32* %6, i32 %7, double 0.000000e+00)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @SETTING_BRIGHTNESS, align 4
  %11 = call i32 @obs_data_set_default_double(i32* %9, i32 %10, double 0.000000e+00)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @SETTING_SATURATION, align 4
  %14 = call i32 @obs_data_set_default_double(i32* %12, i32 %13, double 0.000000e+00)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @SETTING_HUESHIFT, align 4
  %17 = call i32 @obs_data_set_default_double(i32* %15, i32 %16, double 0.000000e+00)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @SETTING_OPACITY, align 4
  %20 = call i32 @obs_data_set_default_double(i32* %18, i32 %19, double 1.000000e+02)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @SETTING_COLOR, align 4
  %23 = call i32 @obs_data_set_default_int(i32* %21, i32 %22, i32 16777215)
  ret void
}

declare dso_local i32 @obs_data_set_default_double(i32*, i32, double) #1

declare dso_local i32 @obs_data_set_default_int(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
