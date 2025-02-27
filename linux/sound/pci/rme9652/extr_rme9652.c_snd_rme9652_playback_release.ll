; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_playback_release.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_playback_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_rme9652 = type { i32, %struct.TYPE_4__*, i32, i32, i32* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme9652_playback_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme9652_playback_release(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_rme9652*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.snd_rme9652* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.snd_rme9652* %5, %struct.snd_rme9652** %3, align 8
  %6 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %7 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %6, i32 0, i32 3
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %10 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 8
  %11 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %12 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %11, i32 0, i32 4
  store i32* null, i32** %12, align 8
  %13 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %14 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %13, i32 0, i32 3
  %15 = call i32 @spin_unlock_irq(i32* %14)
  %16 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %17 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %18 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %16
  store i32 %25, i32* %23, align 4
  %26 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %27 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %30 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %33 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @snd_ctl_notify(i32 %28, i32 %31, i32* %35)
  ret i32 0
}

declare dso_local %struct.snd_rme9652* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
