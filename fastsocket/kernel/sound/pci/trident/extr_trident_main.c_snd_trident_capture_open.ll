; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_capture_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, %struct.snd_trident_voice* }
%struct.snd_trident_voice = type { i32, %struct.snd_pcm_substream* }
%struct.snd_trident = type { i32 }

@SNDRV_TRIDENT_VOICE_TYPE_PCM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@snd_trident_pcm_free_substream = common dso_local global i32 0, align 4
@snd_trident_capture = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_trident_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_trident*, align 8
  %5 = alloca %struct.snd_trident_voice*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_trident* %8, %struct.snd_trident** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %6, align 8
  %12 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %13 = load i32, i32* @SNDRV_TRIDENT_VOICE_TYPE_PCM, align 4
  %14 = call %struct.snd_trident_voice* @snd_trident_alloc_voice(%struct.snd_trident* %12, i32 %13, i32 0, i32 0)
  store %struct.snd_trident_voice* %14, %struct.snd_trident_voice** %5, align 8
  %15 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %16 = icmp eq %struct.snd_trident_voice* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %40

20:                                               ; preds = %1
  %21 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %22 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %25 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %24, i32 0, i32 1
  store %struct.snd_pcm_substream* %23, %struct.snd_pcm_substream** %25, align 8
  %26 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 2
  store %struct.snd_trident_voice* %26, %struct.snd_trident_voice** %28, align 8
  %29 = load i32, i32* @snd_trident_pcm_free_substream, align 4
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @snd_trident_capture, align 4
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %36 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %35)
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %38 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %39 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %37, i32 %38, i32 0, i32 65536)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %20, %17
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_trident_voice* @snd_trident_alloc_voice(%struct.snd_trident*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
