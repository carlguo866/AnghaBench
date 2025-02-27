; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt274.c_rt274_mic_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt274.c_rt274_mic_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.rt274_priv = type { i32, %struct.snd_soc_jack* }

@RT274_EAPD_GPIO_IRQ_CTRL = common dso_local global i32 0, align 4
@RT274_IRQ_EN = common dso_local global i32 0, align 4
@RT274_IRQ_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.snd_soc_jack*, i8*)* @rt274_mic_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt274_mic_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_jack*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rt274_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %10 = call %struct.rt274_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.rt274_priv* %10, %struct.rt274_priv** %8, align 8
  %11 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %12 = load %struct.rt274_priv*, %struct.rt274_priv** %8, align 8
  %13 = getelementptr inbounds %struct.rt274_priv, %struct.rt274_priv* %12, i32 0, i32 1
  store %struct.snd_soc_jack* %11, %struct.snd_soc_jack** %13, align 8
  %14 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %15 = icmp eq %struct.snd_soc_jack* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load %struct.rt274_priv*, %struct.rt274_priv** %8, align 8
  %18 = getelementptr inbounds %struct.rt274_priv, %struct.rt274_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RT274_EAPD_GPIO_IRQ_CTRL, align 4
  %21 = load i32, i32* @RT274_IRQ_EN, align 4
  %22 = load i32, i32* @RT274_IRQ_DIS, align 4
  %23 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 0, i32* %4, align 4
  br label %34

24:                                               ; preds = %3
  %25 = load %struct.rt274_priv*, %struct.rt274_priv** %8, align 8
  %26 = getelementptr inbounds %struct.rt274_priv, %struct.rt274_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @RT274_EAPD_GPIO_IRQ_CTRL, align 4
  %29 = load i32, i32* @RT274_IRQ_EN, align 4
  %30 = load i32, i32* @RT274_IRQ_EN, align 4
  %31 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.rt274_priv*, %struct.rt274_priv** %8, align 8
  %33 = call i32 @rt274_irq(i32 0, %struct.rt274_priv* %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %24, %16
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.rt274_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @rt274_irq(i32, %struct.rt274_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
