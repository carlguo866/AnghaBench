; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dai.c_snd_soc_dai_compress_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dai.c_snd_soc_dai_compress_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.snd_soc_pcm_runtime*, i32)* }
%struct.snd_soc_pcm_runtime = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_dai_compress_new(%struct.snd_soc_dai* %0, %struct.snd_soc_pcm_runtime* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store %struct.snd_soc_pcm_runtime* %1, %struct.snd_soc_pcm_runtime** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.snd_soc_pcm_runtime*, i32)*, i32 (%struct.snd_soc_pcm_runtime*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.snd_soc_pcm_runtime*, i32)* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.snd_soc_pcm_runtime*, i32)*, i32 (%struct.snd_soc_pcm_runtime*, i32)** %18, align 8
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 %19(%struct.snd_soc_pcm_runtime* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %14
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
