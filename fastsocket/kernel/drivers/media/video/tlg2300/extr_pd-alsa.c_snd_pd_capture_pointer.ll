; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-alsa.c_snd_pd_capture_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-alsa.c_snd_pd_capture_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.poseidon = type { %struct.poseidon_audio }
%struct.poseidon_audio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_pd_capture_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pd_capture_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.poseidon*, align 8
  %4 = alloca %struct.poseidon_audio*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.poseidon* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.poseidon* %6, %struct.poseidon** %3, align 8
  %7 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %8 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %7, i32 0, i32 0
  store %struct.poseidon_audio* %8, %struct.poseidon_audio** %4, align 8
  %9 = load %struct.poseidon_audio*, %struct.poseidon_audio** %4, align 8
  %10 = getelementptr inbounds %struct.poseidon_audio, %struct.poseidon_audio* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  ret i32 %11
}

declare dso_local %struct.poseidon* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
