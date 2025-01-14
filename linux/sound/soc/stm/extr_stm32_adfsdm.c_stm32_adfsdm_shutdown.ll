; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_adfsdm.c_stm32_adfsdm_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_adfsdm.c_stm32_adfsdm_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.stm32_adfsdm_priv = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @stm32_adfsdm_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_adfsdm_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.stm32_adfsdm_priv*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %6 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %7 = call %struct.stm32_adfsdm_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %6)
  store %struct.stm32_adfsdm_priv* %7, %struct.stm32_adfsdm_priv** %5, align 8
  %8 = load %struct.stm32_adfsdm_priv*, %struct.stm32_adfsdm_priv** %5, align 8
  %9 = getelementptr inbounds %struct.stm32_adfsdm_priv, %struct.stm32_adfsdm_priv* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.stm32_adfsdm_priv*, %struct.stm32_adfsdm_priv** %5, align 8
  %12 = getelementptr inbounds %struct.stm32_adfsdm_priv, %struct.stm32_adfsdm_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.stm32_adfsdm_priv*, %struct.stm32_adfsdm_priv** %5, align 8
  %17 = getelementptr inbounds %struct.stm32_adfsdm_priv, %struct.stm32_adfsdm_priv* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @iio_channel_stop_all_cb(i32 %18)
  %20 = load %struct.stm32_adfsdm_priv*, %struct.stm32_adfsdm_priv** %5, align 8
  %21 = getelementptr inbounds %struct.stm32_adfsdm_priv, %struct.stm32_adfsdm_priv* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %15, %2
  %23 = load %struct.stm32_adfsdm_priv*, %struct.stm32_adfsdm_priv** %5, align 8
  %24 = getelementptr inbounds %struct.stm32_adfsdm_priv, %struct.stm32_adfsdm_priv* %23, i32 0, i32 1
  %25 = call i32 @mutex_unlock(i32* %24)
  ret void
}

declare dso_local %struct.stm32_adfsdm_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iio_channel_stop_all_cb(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
