; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8328.c_es8328_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8328.c_es8328_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.es8328_priv = type { i64, i64 }

@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @es8328_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es8328_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.es8328_priv*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %5, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %11 = call %struct.es8328_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.es8328_priv* %11, %struct.es8328_priv** %6, align 8
  %12 = load %struct.es8328_priv*, %struct.es8328_priv** %6, align 8
  %13 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.es8328_priv*, %struct.es8328_priv** %6, align 8
  %18 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %26 = load %struct.es8328_priv*, %struct.es8328_priv** %6, align 8
  %27 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @snd_pcm_hw_constraint_list(i32 %24, i32 0, i32 %25, i64 %28)
  br label %30

30:                                               ; preds = %21, %16, %2
  ret i32 0
}

declare dso_local %struct.es8328_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
