; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2yaudio.c_usX2Y_audio_stream_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2yaudio.c_usX2Y_audio_stream_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usX2Y_substream = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usX2Y_substream**)* @usX2Y_audio_stream_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usX2Y_audio_stream_free(%struct.snd_usX2Y_substream** %0) #0 {
  %2 = alloca %struct.snd_usX2Y_substream**, align 8
  store %struct.snd_usX2Y_substream** %0, %struct.snd_usX2Y_substream*** %2, align 8
  %3 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %2, align 8
  %4 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %5 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, i64 %4
  %6 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %7 = call i32 @kfree(%struct.snd_usX2Y_substream* %6)
  %8 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %2, align 8
  %9 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %10 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %8, i64 %9
  store %struct.snd_usX2Y_substream* null, %struct.snd_usX2Y_substream** %10, align 8
  %11 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %2, align 8
  %12 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %13 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %11, i64 %12
  %14 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %13, align 8
  %15 = call i32 @kfree(%struct.snd_usX2Y_substream* %14)
  %16 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %2, align 8
  %17 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %18 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %16, i64 %17
  store %struct.snd_usX2Y_substream* null, %struct.snd_usX2Y_substream** %18, align 8
  ret void
}

declare dso_local i32 @kfree(%struct.snd_usX2Y_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
