; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_idma.c_idma_setcallbk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_idma.c_idma_setcallbk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.idma_ctrl* }
%struct.idma_ctrl = type { void (i8*, i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, void (i8*, i32)*)* @idma_setcallbk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idma_setcallbk(%struct.snd_pcm_substream* %0, void (i8*, i32)* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca void (i8*, i32)*, align 8
  %5 = alloca %struct.idma_ctrl*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store void (i8*, i32)* %1, void (i8*, i32)** %4, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.idma_ctrl*, %struct.idma_ctrl** %9, align 8
  store %struct.idma_ctrl* %10, %struct.idma_ctrl** %5, align 8
  %11 = load %struct.idma_ctrl*, %struct.idma_ctrl** %5, align 8
  %12 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load void (i8*, i32)*, void (i8*, i32)** %4, align 8
  %15 = load %struct.idma_ctrl*, %struct.idma_ctrl** %5, align 8
  %16 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %15, i32 0, i32 0
  store void (i8*, i32)* %14, void (i8*, i32)** %16, align 8
  %17 = load %struct.idma_ctrl*, %struct.idma_ctrl** %5, align 8
  %18 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %17, i32 0, i32 1
  %19 = call i32 @spin_unlock(i32* %18)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
