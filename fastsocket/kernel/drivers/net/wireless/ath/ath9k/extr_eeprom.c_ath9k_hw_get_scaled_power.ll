; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom.c_ath9k_hw_get_scaled_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom.c_ath9k_hw_get_scaled_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@POWER_CORRECTION_FOR_TWO_CHAIN = common dso_local global i32 0, align 4
@POWER_CORRECTION_FOR_THREE_CHAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ath9k_hw_get_scaled_power(%struct.ath_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  store i64 %8, i64* %7, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ar5416_get_ntxchains(i32 %11)
  switch i32 %12, label %24 [
    i32 1, label %13
    i32 2, label %14
    i32 3, label %19
  ]

13:                                               ; preds = %3
  br label %24

14:                                               ; preds = %3
  %15 = load i32, i32* @POWER_CORRECTION_FOR_TWO_CHAIN, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %7, align 8
  %18 = add nsw i64 %17, %16
  store i64 %18, i64* %7, align 8
  br label %24

19:                                               ; preds = %3
  %20 = load i32, i32* @POWER_CORRECTION_FOR_THREE_CHAIN, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %7, align 8
  %23 = add nsw i64 %22, %21
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %3, %19, %14, %13
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %5, align 8
  %31 = sub nsw i64 %30, %29
  store i64 %31, i64* %5, align 8
  br label %33

32:                                               ; preds = %24
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i64, i64* %5, align 8
  ret i64 %34
}

declare dso_local i32 @ar5416_get_ntxchains(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
