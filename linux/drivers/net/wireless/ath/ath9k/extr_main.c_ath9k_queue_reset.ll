; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_queue_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_queue_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, i32 }
%struct.ath_common = type { i32 }

@ATH_OP_HW_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_queue_reset(%struct.ath_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_common*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ath_common* @ath9k_hw_common(i32 %8)
  store %struct.ath_common* %9, %struct.ath_common** %5, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ath9k_hw_kill_interrupts(i32 %12)
  %14 = load i32, i32* @ATH_OP_HW_RESET, align 4
  %15 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %16 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %15, i32 0, i32 0
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  %18 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 0
  %23 = call i32 @ieee80211_queue_work(i32 %20, i32* %22)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ath9k_hw_kill_interrupts(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
