; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.stm32_spdifrx_data = type { %struct.TYPE_2__*, i32, %struct.snd_pcm_substream* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Enable kclk failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @stm32_spdifrx_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_spdifrx_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.stm32_spdifrx_data*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = call %struct.stm32_spdifrx_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %7)
  store %struct.stm32_spdifrx_data* %8, %struct.stm32_spdifrx_data** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %11 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %10, i32 0, i32 2
  store %struct.snd_pcm_substream* %9, %struct.snd_pcm_substream** %11, align 8
  %12 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %13 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clk_prepare_enable(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %5, align 8
  %20 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %18, %2
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local %struct.stm32_spdifrx_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
