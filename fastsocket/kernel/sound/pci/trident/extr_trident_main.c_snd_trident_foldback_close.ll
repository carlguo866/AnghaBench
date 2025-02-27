; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_foldback_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_foldback_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_trident_voice* }
%struct.snd_trident_voice = type { i64 }
%struct.snd_trident = type { i32 }

@T4D_RCI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_trident_foldback_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_foldback_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_trident*, align 8
  %4 = alloca %struct.snd_trident_voice*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_trident* %7, %struct.snd_trident** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %5, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 0
  %13 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %12, align 8
  store %struct.snd_trident_voice* %13, %struct.snd_trident_voice** %4, align 8
  %14 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %15 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %18 = load i64, i64* @T4D_RCI, align 8
  %19 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %20 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = call i32 @TRID_REG(%struct.snd_trident* %17, i64 %22)
  %24 = call i32 @outb(i32 0, i32 %23)
  %25 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %26 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock_irq(i32* %26)
  ret i32 0
}

declare dso_local %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
