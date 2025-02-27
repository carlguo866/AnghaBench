; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_snd_hw_rule_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_snd_hw_rule_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { i32 }
%struct.snd_interval = type { i32 }
%struct.snd_mask = type { i32* }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S16_BE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @snd_hw_rule_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hw_rule_format(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_hw_rule*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca %struct.snd_mask*, align 8
  %8 = alloca %struct.snd_mask, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %5, align 8
  %9 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %10 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %11 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %9, i32 %10)
  store %struct.snd_interval* %11, %struct.snd_interval** %6, align 8
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %13 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %14 = call %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params* %12, i32 %13)
  store %struct.snd_mask* %14, %struct.snd_mask** %7, align 8
  %15 = call i32 @snd_mask_any(%struct.snd_mask* %8)
  %16 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %17 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_BE, align 4
  %22 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %8, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %21
  store i32 %26, i32* %24, align 4
  %27 = load %struct.snd_mask*, %struct.snd_mask** %7, align 8
  %28 = call i32 @snd_mask_refine(%struct.snd_mask* %27, %struct.snd_mask* %8)
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %20
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_mask_any(%struct.snd_mask*) #1

declare dso_local i32 @snd_mask_refine(%struct.snd_mask*, %struct.snd_mask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
