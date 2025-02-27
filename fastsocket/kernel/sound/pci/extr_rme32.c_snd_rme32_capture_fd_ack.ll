; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme32.c_snd_rme32_capture_fd_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme32.c_snd_rme32_capture_fd_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.rme32 = type { i32 }

@snd_rme32_cp_trans_copy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme32_capture_fd_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme32_capture_fd_ack(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.rme32*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.rme32* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.rme32* %5, %struct.rme32** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.rme32*, %struct.rme32** %3, align 8
  %8 = getelementptr inbounds %struct.rme32, %struct.rme32* %7, i32 0, i32 0
  %9 = load i32, i32* @snd_rme32_cp_trans_copy, align 4
  %10 = call i32 @snd_pcm_indirect_capture_transfer(%struct.snd_pcm_substream* %6, i32* %8, i32 %9)
  ret i32 0
}

declare dso_local %struct.rme32* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_indirect_capture_transfer(%struct.snd_pcm_substream*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
