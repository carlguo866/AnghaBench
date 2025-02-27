; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-pcm.c_playback_ack.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-pcm.c_playback_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__*, %struct.snd_dice* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_dice = type { %struct.amdtp_stream* }
%struct.amdtp_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @playback_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @playback_ack(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_dice*, align 8
  %4 = alloca %struct.amdtp_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 1
  %7 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  store %struct.snd_dice* %7, %struct.snd_dice** %3, align 8
  %8 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %9 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %8, i32 0, i32 0
  %10 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %10, i64 %15
  store %struct.amdtp_stream* %16, %struct.amdtp_stream** %4, align 8
  %17 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %18 = call i32 @amdtp_stream_pcm_ack(%struct.amdtp_stream* %17)
  ret i32 %18
}

declare dso_local i32 @amdtp_stream_pcm_ack(%struct.amdtp_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
