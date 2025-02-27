; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__*, %struct.loopback* }
%struct.TYPE_2__ = type { %struct.loopback_pcm* }
%struct.loopback_pcm = type { i32 }
%struct.loopback = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @loopback_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.loopback*, align 8
  %4 = alloca %struct.loopback_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 1
  %7 = load %struct.loopback*, %struct.loopback** %6, align 8
  store %struct.loopback* %7, %struct.loopback** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.loopback_pcm*, %struct.loopback_pcm** %11, align 8
  store %struct.loopback_pcm* %12, %struct.loopback_pcm** %4, align 8
  %13 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %14 = call i32 @loopback_timer_stop_sync(%struct.loopback_pcm* %13)
  %15 = load %struct.loopback*, %struct.loopback** %3, align 8
  %16 = getelementptr inbounds %struct.loopback, %struct.loopback* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %19 = call i32 @free_cable(%struct.snd_pcm_substream* %18)
  %20 = load %struct.loopback*, %struct.loopback** %3, align 8
  %21 = getelementptr inbounds %struct.loopback, %struct.loopback* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  ret i32 0
}

declare dso_local i32 @loopback_timer_stop_sync(%struct.loopback_pcm*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @free_cable(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
