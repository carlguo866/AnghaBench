; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_get_dma_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_get_dma_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_runtime = type { i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.snd_pcm_runtime*, i32, i64)* @get_dma_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_dma_ptr(%struct.snd_pcm_runtime* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.snd_pcm_runtime* %0, %struct.snd_pcm_runtime** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = getelementptr i8, i8* %9, i64 %10
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %15, %18
  %20 = mul nsw i32 %12, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr i8, i8* %11, i64 %21
  ret i8* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
