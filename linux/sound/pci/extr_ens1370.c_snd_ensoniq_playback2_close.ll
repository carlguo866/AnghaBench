; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_playback2_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_playback2_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.ensoniq = type { i32, i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ES_MODE_PLAY2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ensoniq_playback2_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ensoniq_playback2_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.ensoniq*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.ensoniq* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.ensoniq* %5, %struct.ensoniq** %3, align 8
  %6 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %7 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %6, i32 0, i32 3
  store i32* null, i32** %7, align 8
  %8 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %9 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load i32, i32* @ES_MODE_PLAY2, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %14 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %18 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock_irq(i32* %18)
  ret i32 0
}

declare dso_local %struct.ensoniq* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
