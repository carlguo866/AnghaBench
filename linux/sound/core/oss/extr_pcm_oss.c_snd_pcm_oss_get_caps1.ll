; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_get_caps1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_get_caps1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime*, %struct.TYPE_2__* }
%struct.snd_pcm_runtime = type { i32 }
%struct.TYPE_2__ = type { i32 }

@DSP_CAP_DUPLEX = common dso_local global i32 0, align 4
@DSP_CAP_MULTI = common dso_local global i32 0, align 4
@DSP_CAP_REALTIME = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_BATCH = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_BLOCK_TRANSFER = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_pcm_oss_get_caps1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_get_caps1(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %7 = icmp eq %struct.snd_pcm_substream* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* @DSP_CAP_DUPLEX, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %3, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %14, %8
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
