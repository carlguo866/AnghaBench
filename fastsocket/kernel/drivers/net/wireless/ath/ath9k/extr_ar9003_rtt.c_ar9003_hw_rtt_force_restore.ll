; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_rtt.c_ar9003_hw_rtt_force_restore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_rtt.c_ar9003_hw_rtt_force_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_PHY_RTT_CTRL = common dso_local global i32 0, align 4
@AR_PHY_RTT_CTRL_FORCE_RADIO_RESTORE = common dso_local global i32 0, align 4
@RTT_RESTORE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9003_hw_rtt_force_restore(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %5 = load i32, i32* @AR_PHY_RTT_CTRL, align 4
  %6 = load i32, i32* @AR_PHY_RTT_CTRL_FORCE_RADIO_RESTORE, align 4
  %7 = load i32, i32* @RTT_RESTORE_TIMEOUT, align 4
  %8 = call i32 @ath9k_hw_wait(%struct.ath_hw* %4, i32 %5, i32 %6, i32 0, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %13 = load i32, i32* @AR_PHY_RTT_CTRL, align 4
  %14 = load i32, i32* @AR_PHY_RTT_CTRL_FORCE_RADIO_RESTORE, align 4
  %15 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %12, i32 %13, i32 %14, i32 1)
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = load i32, i32* @AR_PHY_RTT_CTRL, align 4
  %18 = load i32, i32* @AR_PHY_RTT_CTRL_FORCE_RADIO_RESTORE, align 4
  %19 = load i32, i32* @RTT_RESTORE_TIMEOUT, align 4
  %20 = call i32 @ath9k_hw_wait(%struct.ath_hw* %16, i32 %17, i32 %18, i32 0, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %24

23:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %22, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
