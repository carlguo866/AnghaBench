; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_interrupts.c_ar5210IsInterruptPending.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_interrupts.c_ar5210IsInterruptPending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_INTPEND = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5210IsInterruptPending(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %3 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %4 = load i32, i32* @AR_INTPEND, align 4
  %5 = call i64 @OS_REG_READ(%struct.ath_hal* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @AH_TRUE, align 4
  br label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @AH_FALSE, align 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  ret i32 %12
}

declare dso_local i64 @OS_REG_READ(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
