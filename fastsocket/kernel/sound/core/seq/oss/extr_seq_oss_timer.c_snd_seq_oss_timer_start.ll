; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_timer.c_snd_seq_oss_timer_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_timer.c_snd_seq_oss_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_timer = type { i32, i64, i32, i32, %struct.seq_oss_devinfo* }
%struct.seq_oss_devinfo = type { i32, i32 }
%struct.snd_seq_queue_tempo = type { i32, i32, i32 }

@SNDRV_SEQ_EVENT_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_oss_timer_start(%struct.seq_oss_timer* %0) #0 {
  %2 = alloca %struct.seq_oss_timer*, align 8
  %3 = alloca %struct.seq_oss_devinfo*, align 8
  %4 = alloca %struct.snd_seq_queue_tempo, align 4
  store %struct.seq_oss_timer* %0, %struct.seq_oss_timer** %2, align 8
  %5 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %2, align 8
  %6 = getelementptr inbounds %struct.seq_oss_timer, %struct.seq_oss_timer* %5, i32 0, i32 4
  %7 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %6, align 8
  store %struct.seq_oss_devinfo* %7, %struct.seq_oss_devinfo** %3, align 8
  %8 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %2, align 8
  %9 = getelementptr inbounds %struct.seq_oss_timer, %struct.seq_oss_timer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %2, align 8
  %14 = call i32 @snd_seq_oss_timer_stop(%struct.seq_oss_timer* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = call i32 @memset(%struct.snd_seq_queue_tempo* %4, i32 0, i32 12)
  %17 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %3, align 8
  %18 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.snd_seq_queue_tempo, %struct.snd_seq_queue_tempo* %4, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %2, align 8
  %22 = getelementptr inbounds %struct.seq_oss_timer, %struct.seq_oss_timer* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.snd_seq_queue_tempo, %struct.snd_seq_queue_tempo* %4, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %2, align 8
  %26 = getelementptr inbounds %struct.seq_oss_timer, %struct.seq_oss_timer* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.snd_seq_queue_tempo, %struct.snd_seq_queue_tempo* %4, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %3, align 8
  %30 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snd_seq_set_queue_tempo(i32 %31, %struct.snd_seq_queue_tempo* %4)
  %33 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %3, align 8
  %34 = load i32, i32* @SNDRV_SEQ_EVENT_START, align 4
  %35 = call i32 @send_timer_event(%struct.seq_oss_devinfo* %33, i32 %34, i32 0)
  %36 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %2, align 8
  %37 = getelementptr inbounds %struct.seq_oss_timer, %struct.seq_oss_timer* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %2, align 8
  %39 = getelementptr inbounds %struct.seq_oss_timer, %struct.seq_oss_timer* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  ret i32 0
}

declare dso_local i32 @snd_seq_oss_timer_stop(%struct.seq_oss_timer*) #1

declare dso_local i32 @memset(%struct.snd_seq_queue_tempo*, i32, i32) #1

declare dso_local i32 @snd_seq_set_queue_tempo(i32, %struct.snd_seq_queue_tempo*) #1

declare dso_local i32 @send_timer_event(%struct.seq_oss_devinfo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
