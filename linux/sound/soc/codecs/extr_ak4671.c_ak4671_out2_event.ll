; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4671.c_ak4671_out2_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4671.c_ak4671_out2_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@AK4671_LOUT2_POWER_MANAGERMENT = common dso_local global i32 0, align 4
@AK4671_MUTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @ak4671_out2_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4671_out2_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %10)
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %7, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %24 [
    i32 129, label %13
    i32 128, label %19
  ]

13:                                               ; preds = %3
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = load i32, i32* @AK4671_LOUT2_POWER_MANAGERMENT, align 4
  %16 = load i32, i32* @AK4671_MUTEN, align 4
  %17 = load i32, i32* @AK4671_MUTEN, align 4
  %18 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %14, i32 %15, i32 %16, i32 %17)
  br label %24

19:                                               ; preds = %3
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %21 = load i32, i32* @AK4671_LOUT2_POWER_MANAGERMENT, align 4
  %22 = load i32, i32* @AK4671_MUTEN, align 4
  %23 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %20, i32 %21, i32 %22, i32 0)
  br label %24

24:                                               ; preds = %3, %19, %13
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
