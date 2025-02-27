; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8955.c_wm8955_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8955.c_wm8955_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@WM8955_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8955_DIGENB = common dso_local global i32 0, align 4
@WM8955_CLOCKING_PLL = common dso_local global i32 0, align 4
@WM8955_PLL_RB = common dso_local global i32 0, align 4
@WM8955_PLLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wm8955_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8955_sysclk(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = load i32, i32* @WM8955_POWER_MANAGEMENT_1, align 4
  %15 = load i32, i32* @WM8955_DIGENB, align 4
  %16 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 %15, i32 0)
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %18 = load i32, i32* @WM8955_CLOCKING_PLL, align 4
  %19 = load i32, i32* @WM8955_PLL_RB, align 4
  %20 = load i32, i32* @WM8955_PLLEN, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %17, i32 %18, i32 %21, i32 0)
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %28 [
    i32 129, label %24
    i32 128, label %25
  ]

24:                                               ; preds = %3
  br label %31

25:                                               ; preds = %3
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %27 = call i32 @wm8955_configure_clocking(%struct.snd_soc_component* %26)
  store i32 %27, i32* %8, align 4
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %28, %25, %24
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @wm8955_configure_clocking(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
