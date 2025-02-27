; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_misc.c_ar5416GetCurRssi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_misc.c_ar5416GetCurRssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_PHY_CURRENT_RSSI = common dso_local global i32 0, align 4
@AR9130_PHY_CURRENT_RSSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5416GetCurRssi(%struct.ath_hal* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hal*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  %4 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %5 = call i64 @AR_SREV_OWL(%struct.ath_hal* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %9 = load i32, i32* @AR_PHY_CURRENT_RSSI, align 4
  %10 = call i32 @OS_REG_READ(%struct.ath_hal* %8, i32 %9)
  %11 = and i32 %10, 255
  store i32 %11, i32* %2, align 4
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %14 = load i32, i32* @AR9130_PHY_CURRENT_RSSI, align 4
  %15 = call i32 @OS_REG_READ(%struct.ath_hal* %13, i32 %14)
  %16 = and i32 %15, 255
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %12, %7
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i64 @AR_SREV_OWL(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
