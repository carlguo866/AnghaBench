; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_get_max_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_get_max_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CTL_2GHT20 = common dso_local global i64 0, align 8
@ATH_BTCOEX_HT20_MAX_TXPOWER = common dso_local global i32 0, align 4
@CTL_2GHT40 = common dso_local global i64 0, align 8
@ATH_BTCOEX_HT40_MAX_TXPOWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9003_mci_get_max_txpower(%struct.ath_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %7 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %27

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @CTL_2GHT20, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @ATH_BTCOEX_HT20_MAX_TXPOWER, align 4
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %13
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @CTL_2GHT40, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @ATH_BTCOEX_HT40_MAX_TXPOWER, align 4
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26, %12
  store i32 -1, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %23, %17
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
