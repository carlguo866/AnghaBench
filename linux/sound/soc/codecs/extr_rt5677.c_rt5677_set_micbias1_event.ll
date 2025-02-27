; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_set_micbias1_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_set_micbias1_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.rt5677_priv = type { i32 }

@RT5677_PWR_ANLG2 = common dso_local global i32 0, align 4
@RT5677_PWR_CLK_MB1 = common dso_local global i32 0, align 4
@RT5677_PWR_PP_MB1 = common dso_local global i32 0, align 4
@RT5677_PWR_CLK_MB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @rt5677_set_micbias1_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5677_set_micbias1_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt5677_priv*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = call %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.rt5677_priv* %15, %struct.rt5677_priv** %9, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %44 [
    i32 129, label %17
    i32 128, label %33
  ]

17:                                               ; preds = %3
  %18 = load %struct.rt5677_priv*, %struct.rt5677_priv** %9, align 8
  %19 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RT5677_PWR_ANLG2, align 4
  %22 = load i32, i32* @RT5677_PWR_CLK_MB1, align 4
  %23 = load i32, i32* @RT5677_PWR_PP_MB1, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @RT5677_PWR_CLK_MB, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @RT5677_PWR_CLK_MB1, align 4
  %28 = load i32, i32* @RT5677_PWR_PP_MB1, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @RT5677_PWR_CLK_MB, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %26, i32 %31)
  br label %45

33:                                               ; preds = %3
  %34 = load %struct.rt5677_priv*, %struct.rt5677_priv** %9, align 8
  %35 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @RT5677_PWR_ANLG2, align 4
  %38 = load i32, i32* @RT5677_PWR_CLK_MB1, align 4
  %39 = load i32, i32* @RT5677_PWR_PP_MB1, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @RT5677_PWR_CLK_MB, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %42, i32 0)
  br label %45

44:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

45:                                               ; preds = %33, %17
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
