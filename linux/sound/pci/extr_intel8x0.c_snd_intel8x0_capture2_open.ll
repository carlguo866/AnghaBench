; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_capture2_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_capture2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.intel8x0 = type { i32* }

@ICHD_PCM2IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_intel8x0_capture2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_capture2_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.intel8x0*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.intel8x0* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.intel8x0* %5, %struct.intel8x0** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %8 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @ICHD_PCM2IN, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = call i32 @snd_intel8x0_pcm_open(%struct.snd_pcm_substream* %6, i32* %11)
  ret i32 %12
}

declare dso_local %struct.intel8x0* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_intel8x0_pcm_open(%struct.snd_pcm_substream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
