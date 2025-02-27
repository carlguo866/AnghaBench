; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_recv.c_ar5212GetRxFilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_recv.c_ar5212GetRxFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@AR_RX_FILTER = common dso_local global i32 0, align 4
@AR_PHY_ERR = common dso_local global i32 0, align 4
@AR_PHY_ERR_RADAR = common dso_local global i32 0, align 4
@HAL_RX_FILTER_PHYRADAR = common dso_local global i32 0, align 4
@AR_PHY_ERR_OFDM_TIMING = common dso_local global i32 0, align 4
@AR_PHY_ERR_CCK_TIMING = common dso_local global i32 0, align 4
@HAL_RX_FILTER_PHYERR = common dso_local global i32 0, align 4
@AR_MISC_MODE_BSSID_MATCH_FORCE = common dso_local global i32 0, align 4
@HAL_RX_FILTER_BSSID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5212GetRxFilter(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %5 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %6 = load i32, i32* @AR_RX_FILTER, align 4
  %7 = call i32 @OS_REG_READ(%struct.ath_hal* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %9 = load i32, i32* @AR_PHY_ERR, align 4
  %10 = call i32 @OS_REG_READ(%struct.ath_hal* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @AR_PHY_ERR_RADAR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @HAL_RX_FILTER_PHYRADAR, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @AR_PHY_ERR_OFDM_TIMING, align 4
  %22 = load i32, i32* @AR_PHY_ERR_CCK_TIMING, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @HAL_RX_FILTER_PHYERR, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %19
  %31 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %32 = call %struct.TYPE_5__* @AH_PRIVATE(%struct.ath_hal* %31)
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %39 = call %struct.TYPE_6__* @AH5212(%struct.ath_hal* %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AR_MISC_MODE_BSSID_MATCH_FORCE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @HAL_RX_FILTER_BSSID, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %37, %30
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local %struct.TYPE_5__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_6__* @AH5212(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
