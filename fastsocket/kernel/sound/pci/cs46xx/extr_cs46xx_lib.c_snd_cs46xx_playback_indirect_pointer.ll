; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_playback_indirect_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_playback_indirect_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.snd_cs46xx_pcm* }
%struct.snd_cs46xx_pcm = type { i32, %struct.TYPE_5__, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.snd_cs46xx = type { i32 }

@BA1_PBA = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cs46xx_playback_indirect_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs46xx_playback_indirect_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.snd_cs46xx_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_cs46xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_cs46xx* %7, %struct.snd_cs46xx** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %11, align 8
  store %struct.snd_cs46xx_pcm* %12, %struct.snd_cs46xx_pcm** %5, align 8
  %13 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %14 = load i32, i32* @BA1_PBA, align 4
  %15 = call i64 @snd_cs46xx_peek(%struct.snd_cs46xx* %13, i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %5, align 8
  %17 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = sub i64 %20, %19
  store i64 %21, i64* %4, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %23 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %5, align 8
  %24 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %23, i32 0, i32 0
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @snd_pcm_indirect_playback_pointer(%struct.snd_pcm_substream* %22, i32* %24, i64 %25)
  ret i32 %26
}

declare dso_local %struct.snd_cs46xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_cs46xx_peek(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @snd_pcm_indirect_playback_pointer(%struct.snd_pcm_substream*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
