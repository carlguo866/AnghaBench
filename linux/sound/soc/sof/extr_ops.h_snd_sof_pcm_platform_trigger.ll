; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_ops.h_snd_sof_pcm_platform_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_ops.h_snd_sof_pcm_platform_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.snd_sof_dev*, %struct.snd_pcm_substream*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*, %struct.snd_pcm_substream*, i32)* @snd_sof_pcm_platform_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sof_pcm_platform_trigger(%struct.snd_sof_dev* %0, %struct.snd_pcm_substream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_sof_dev*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %5, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %9 = call %struct.TYPE_2__* @sof_ops(%struct.snd_sof_dev* %8)
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %13 = call %struct.TYPE_2__* @sof_ops(%struct.snd_sof_dev* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.snd_sof_dev*, %struct.snd_pcm_substream*, i32)*, i32 (%struct.snd_sof_dev*, %struct.snd_pcm_substream*, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.snd_sof_dev*, %struct.snd_pcm_substream*, i32)* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %19 = call %struct.TYPE_2__* @sof_ops(%struct.snd_sof_dev* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.snd_sof_dev*, %struct.snd_pcm_substream*, i32)*, i32 (%struct.snd_sof_dev*, %struct.snd_pcm_substream*, i32)** %20, align 8
  %22 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 %21(%struct.snd_sof_dev* %22, %struct.snd_pcm_substream* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %27

26:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.TYPE_2__* @sof_ops(%struct.snd_sof_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
