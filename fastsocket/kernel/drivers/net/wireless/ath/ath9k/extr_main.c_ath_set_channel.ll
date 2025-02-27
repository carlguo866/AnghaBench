; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath_set_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@SC_OP_INVALID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, %struct.ieee80211_hw*, %struct.ath9k_channel*)* @ath_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_set_channel(%struct.ath_softc* %0, %struct.ieee80211_hw* %1, %struct.ath9k_channel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ath9k_channel*, align 8
  %8 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %5, align 8
  store %struct.ieee80211_hw* %1, %struct.ieee80211_hw** %6, align 8
  store %struct.ath9k_channel* %2, %struct.ath9k_channel** %7, align 8
  %9 = load i32, i32* @SC_OP_INVALID, align 4
  %10 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 0
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %22

17:                                               ; preds = %3
  %18 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %19 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %20 = call i32 @ath_reset_internal(%struct.ath_softc* %18, %struct.ath9k_channel* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %17, %14
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath_reset_internal(%struct.ath_softc*, %struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
