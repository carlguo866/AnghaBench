; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_dma-sh7760.c_camelot_txdma.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_dma-sh7760.c_camelot_txdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camelot_pcm = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @camelot_txdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camelot_txdma(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.camelot_pcm*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.camelot_pcm*
  store %struct.camelot_pcm* %5, %struct.camelot_pcm** %3, align 8
  %6 = load %struct.camelot_pcm*, %struct.camelot_pcm** %3, align 8
  %7 = getelementptr inbounds %struct.camelot_pcm, %struct.camelot_pcm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = xor i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = load %struct.camelot_pcm*, %struct.camelot_pcm** %3, align 8
  %11 = getelementptr inbounds %struct.camelot_pcm, %struct.camelot_pcm* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @snd_pcm_period_elapsed(i32 %12)
  ret void
}

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
