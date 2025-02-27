; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_fill_pcm_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_fill_pcm_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.snd_sst_stream_params = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_sst_stream_params*)* @sst_fill_pcm_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sst_fill_pcm_params(%struct.snd_pcm_substream* %0, %struct.snd_sst_stream_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_sst_stream_params*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_sst_stream_params* %1, %struct.snd_sst_stream_params** %4, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = load %struct.snd_sst_stream_params*, %struct.snd_sst_stream_params** %4, align 8
  %12 = getelementptr inbounds %struct.snd_sst_stream_params, %struct.snd_sst_stream_params* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 5
  store i64 %10, i64* %14, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.snd_sst_stream_params*, %struct.snd_sst_stream_params** %4, align 8
  %21 = getelementptr inbounds %struct.snd_sst_stream_params, %struct.snd_sst_stream_params* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 4
  store i32 %19, i32* %23, align 4
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.snd_sst_stream_params*, %struct.snd_sst_stream_params** %4, align 8
  %30 = getelementptr inbounds %struct.snd_sst_stream_params, %struct.snd_sst_stream_params* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  store i32 %28, i32* %32, align 8
  %33 = load %struct.snd_sst_stream_params*, %struct.snd_sst_stream_params** %4, align 8
  %34 = getelementptr inbounds %struct.snd_sst_stream_params, %struct.snd_sst_stream_params* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.snd_sst_stream_params*, %struct.snd_sst_stream_params** %4, align 8
  %38 = getelementptr inbounds %struct.snd_sst_stream_params, %struct.snd_sst_stream_params* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.snd_sst_stream_params*, %struct.snd_sst_stream_params** %4, align 8
  %42 = getelementptr inbounds %struct.snd_sst_stream_params, %struct.snd_sst_stream_params* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @memset(i32 %45, i32 0, i32 8)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
