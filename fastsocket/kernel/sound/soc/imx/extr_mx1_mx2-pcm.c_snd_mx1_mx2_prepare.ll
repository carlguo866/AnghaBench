; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/imx/extr_mx1_mx2-pcm.c_snd_mx1_mx2_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/imx/extr_mx1_mx2-pcm.c_snd_mx1_mx2_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.mx1_mx2_runtime_data* }
%struct.mx1_mx2_runtime_data = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_mx1_mx2_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mx1_mx2_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.mx1_mx2_runtime_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 0
  %7 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  store %struct.snd_pcm_runtime* %7, %struct.snd_pcm_runtime** %3, align 8
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %8, i32 0, i32 0
  %10 = load %struct.mx1_mx2_runtime_data*, %struct.mx1_mx2_runtime_data** %9, align 8
  store %struct.mx1_mx2_runtime_data* %10, %struct.mx1_mx2_runtime_data** %4, align 8
  %11 = load %struct.mx1_mx2_runtime_data*, %struct.mx1_mx2_runtime_data** %4, align 8
  %12 = getelementptr inbounds %struct.mx1_mx2_runtime_data, %struct.mx1_mx2_runtime_data* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.mx1_mx2_runtime_data*, %struct.mx1_mx2_runtime_data** %4, align 8
  %14 = getelementptr inbounds %struct.mx1_mx2_runtime_data, %struct.mx1_mx2_runtime_data* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
