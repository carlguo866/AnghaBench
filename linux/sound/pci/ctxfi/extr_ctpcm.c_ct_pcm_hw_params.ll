; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctpcm.c_ct_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctpcm.c_ct_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ct_atc_pcm* }
%struct.ct_atc_pcm = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.ct_atc = type { i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @ct_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.ct_atc*, align 8
  %7 = alloca %struct.ct_atc_pcm*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.ct_atc* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.ct_atc* %10, %struct.ct_atc** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %14, align 8
  store %struct.ct_atc_pcm* %15, %struct.ct_atc_pcm** %7, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %18 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %17)
  %19 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %16, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.ct_atc*, %struct.ct_atc** %6, align 8
  %26 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %25, i32 0, i32 0
  %27 = load i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)*, i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)** %26, align 8
  %28 = load %struct.ct_atc*, %struct.ct_atc** %6, align 8
  %29 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %7, align 8
  %30 = call i32 %27(%struct.ct_atc* %28, %struct.ct_atc_pcm* %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %24, %22
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.ct_atc* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
