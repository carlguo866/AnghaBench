; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-fade-to-color.c_fade_to_color_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-fade-to-color.c_fade_to_color_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_COLOR = common dso_local global i32 0, align 4
@S_COLOR_TEXT = common dso_local global i32 0, align 4
@S_SWITCH_POINT = common dso_local global i32 0, align 4
@S_SWITCH_POINT_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @fade_to_color_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fade_to_color_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32* (...) @obs_properties_create()
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @S_COLOR, align 4
  %8 = load i32, i32* @S_COLOR_TEXT, align 4
  %9 = call i32 @obs_properties_add_color(i32* %6, i32 %7, i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @S_SWITCH_POINT, align 4
  %12 = load i32, i32* @S_SWITCH_POINT_TEXT, align 4
  %13 = call i32* @obs_properties_add_int_slider(i32* %10, i32 %11, i32 %12, i32 0, i32 100, i32 1)
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @obs_property_int_set_suffix(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @UNUSED_PARAMETER(i8* %16)
  %18 = load i32*, i32** %3, align 8
  ret i32* %18
}

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32 @obs_properties_add_color(i32*, i32, i32) #1

declare dso_local i32* @obs_properties_add_int_slider(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @obs_property_int_set_suffix(i32*, i8*) #1

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
