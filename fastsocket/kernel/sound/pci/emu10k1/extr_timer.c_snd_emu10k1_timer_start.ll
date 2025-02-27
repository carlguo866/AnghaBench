; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_timer.c_snd_emu10k1_timer_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_timer.c_snd_emu10k1_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer = type { i32 }
%struct.snd_emu10k1 = type { i32, i64 }

@INTE_INTERVALTIMERENB = common dso_local global i32 0, align 4
@TIMER_RATE_MASK = common dso_local global i32 0, align 4
@TIMER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_timer*)* @snd_emu10k1_timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_timer_start(%struct.snd_timer* %0) #0 {
  %2 = alloca %struct.snd_timer*, align 8
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.snd_timer* %0, %struct.snd_timer** %2, align 8
  %6 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %7 = call %struct.snd_emu10k1* @snd_timer_chip(%struct.snd_timer* %6)
  store %struct.snd_emu10k1* %7, %struct.snd_emu10k1** %3, align 8
  %8 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %9 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ult i32 %12, 5
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 5, i32* %5, align 4
  br label %15

15:                                               ; preds = %14, %1
  %16 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %17 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %16, i32 0, i32 0
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %21 = load i32, i32* @INTE_INTERVALTIMERENB, align 4
  %22 = call i32 @snd_emu10k1_intr_enable(%struct.snd_emu10k1* %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @TIMER_RATE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %27 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TIMER, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outw(i32 %25, i64 %30)
  %32 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %33 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %32, i32 0, i32 0
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret i32 0
}

declare dso_local %struct.snd_emu10k1* @snd_timer_chip(%struct.snd_timer*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_emu10k1_intr_enable(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
