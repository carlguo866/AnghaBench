; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_timer.c_calc_alsa_tempo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_timer.c_calc_alsa_tempo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_timer = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_oss_timer*)* @calc_alsa_tempo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_alsa_tempo(%struct.seq_oss_timer* %0) #0 {
  %2 = alloca %struct.seq_oss_timer*, align 8
  store %struct.seq_oss_timer* %0, %struct.seq_oss_timer** %2, align 8
  %3 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %2, align 8
  %4 = getelementptr inbounds %struct.seq_oss_timer, %struct.seq_oss_timer* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = sdiv i32 60000000, %5
  %7 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %2, align 8
  %8 = getelementptr inbounds %struct.seq_oss_timer, %struct.seq_oss_timer* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %2, align 8
  %10 = getelementptr inbounds %struct.seq_oss_timer, %struct.seq_oss_timer* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %2, align 8
  %13 = getelementptr inbounds %struct.seq_oss_timer, %struct.seq_oss_timer* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
