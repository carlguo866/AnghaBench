; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_skl_nau88l25_ssm4567.c_skylake_ssp_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_skl_nau88l25_ssm4567.c_skylake_ssp_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_interval = type { i32, i32 }
%struct.snd_mask = type { i32 }

@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_S24_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*, %struct.snd_pcm_hw_params*)* @skylake_ssp_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skylake_ssp_fixup(%struct.snd_soc_pcm_runtime* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_interval*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca %struct.snd_mask*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %8 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %9 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %10 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %8, i32 %9)
  store %struct.snd_interval* %10, %struct.snd_interval** %5, align 8
  %11 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %12 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %13 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %11, i32 %12)
  store %struct.snd_interval* %13, %struct.snd_interval** %6, align 8
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %15 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %16 = call %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params* %14, i32 %15)
  store %struct.snd_mask* %16, %struct.snd_mask** %7, align 8
  %17 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %18 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %17, i32 0, i32 1
  store i32 48000, i32* %18, align 4
  %19 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %20 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %19, i32 0, i32 0
  store i32 48000, i32* %20, align 4
  %21 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %22 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %21, i32 0, i32 1
  store i32 2, i32* %22, align 4
  %23 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %24 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %23, i32 0, i32 0
  store i32 2, i32* %24, align 4
  %25 = load %struct.snd_mask*, %struct.snd_mask** %7, align 8
  %26 = call i32 @snd_mask_none(%struct.snd_mask* %25)
  %27 = load %struct.snd_mask*, %struct.snd_mask** %7, align 8
  %28 = load i32, i32* @SNDRV_PCM_FORMAT_S24_LE, align 4
  %29 = call i32 @snd_mask_set_format(%struct.snd_mask* %27, i32 %28)
  ret i32 0
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_mask_none(%struct.snd_mask*) #1

declare dso_local i32 @snd_mask_set_format(%struct.snd_mask*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
