; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-pcm-lib.c___pxa2xx_pcm_hw_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-pcm-lib.c___pxa2xx_pcm_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pxa2xx_runtime_data* }
%struct.pxa2xx_runtime_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pxa2xx_pcm_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.pxa2xx_runtime_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %7, align 8
  store %struct.pxa2xx_runtime_data* %8, %struct.pxa2xx_runtime_data** %3, align 8
  %9 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %3, align 8
  %10 = icmp ne %struct.pxa2xx_runtime_data* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %3, align 8
  %13 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %3, align 8
  %18 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %3, align 8
  %25 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %23, %16, %11, %1
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %31 = call i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream* %30, i32* null)
  ret i32 0
}

declare dso_local i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
