; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_recv.c_ar5211StartPcuReceive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_recv.c_ar5211StartPcuReceive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_DIAG_SW = common dso_local global i32 0, align 4
@AR_DIAG_SW_DIS_RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5211StartPcuReceive(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %6 = load i32, i32* @AR_DIAG_SW, align 4
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = load i32, i32* @AR_DIAG_SW, align 4
  %9 = call i32 @OS_REG_READ(%struct.ath_hal* %7, i32 %8)
  %10 = load i32, i32* @AR_DIAG_SW_DIS_RX, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = call i32 @OS_REG_WRITE(%struct.ath_hal* %5, i32 %6, i32 %12)
  ret void
}

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
