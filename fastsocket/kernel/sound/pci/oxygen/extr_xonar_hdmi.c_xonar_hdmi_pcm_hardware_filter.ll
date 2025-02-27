; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_hdmi.c_xonar_hdmi_pcm_hardware_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_hdmi.c_xonar_hdmi_pcm_hardware_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hardware = type { i32, i32 }

@PCM_MULTICH = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_44100 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_48000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_96000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_192000 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xonar_hdmi_pcm_hardware_filter(i32 %0, %struct.snd_pcm_hardware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_hardware*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.snd_pcm_hardware* %1, %struct.snd_pcm_hardware** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @PCM_MULTICH, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load i32, i32* @SNDRV_PCM_RATE_44100, align 4
  %10 = load i32, i32* @SNDRV_PCM_RATE_48000, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SNDRV_PCM_RATE_96000, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SNDRV_PCM_RATE_192000, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %4, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %18, i32 0, i32 1
  store i32 44100, i32* %19, align 4
  br label %20

20:                                               ; preds = %8, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
