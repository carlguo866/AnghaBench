; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/adi/extr_axi-i2s.c_axi_i2s_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/adi/extr_axi-i2s.c_axi_i2s_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, i32 }
%struct.snd_soc_dai = type { i32 }
%struct.axi_i2s = type { i32, i32, i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@AXI_I2S_RESET_RX_FIFO = common dso_local global i32 0, align 4
@AXI_I2S_RESET_TX_FIFO = common dso_local global i32 0, align 4
@AXI_I2S_REG_RESET = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @axi_i2s_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axi_i2s_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.axi_i2s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %10 = call %struct.axi_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.axi_i2s* %10, %struct.axi_i2s** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @AXI_I2S_RESET_RX_FIFO, align 4
  store i32 %17, i32* %7, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @AXI_I2S_RESET_TX_FIFO, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.axi_i2s*, %struct.axi_i2s** %6, align 8
  %22 = getelementptr inbounds %struct.axi_i2s, %struct.axi_i2s* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AXI_I2S_REG_RESET, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @regmap_write(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %31 = load %struct.axi_i2s*, %struct.axi_i2s** %6, align 8
  %32 = getelementptr inbounds %struct.axi_i2s, %struct.axi_i2s* %31, i32 0, i32 1
  %33 = call i32 @snd_pcm_hw_constraint_ratnums(i32 %29, i32 0, i32 %30, i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %43

38:                                               ; preds = %20
  %39 = load %struct.axi_i2s*, %struct.axi_i2s** %6, align 8
  %40 = getelementptr inbounds %struct.axi_i2s, %struct.axi_i2s* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_prepare_enable(i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %36
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.axi_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_ratnums(i32, i32, i32, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
