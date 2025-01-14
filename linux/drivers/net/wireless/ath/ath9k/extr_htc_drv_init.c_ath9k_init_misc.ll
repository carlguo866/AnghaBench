; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_init_misc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_init_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.ath_common = type { i32, i32 }

@ATH_RSSI_DUMMY_MARKER = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*)* @ath9k_init_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_init_misc(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca %struct.ath9k_htc_priv*, align 8
  %3 = alloca %struct.ath_common*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %2, align 8
  %4 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %4, i32 0, i32 1
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_6__* %6)
  store %struct.ath_common* %7, %struct.ath_common** %3, align 8
  %8 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %9 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @eth_broadcast_addr(i32 %10)
  %12 = load i32, i32* @ATH_RSSI_DUMMY_MARKER, align 4
  %13 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %14 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  %20 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %21 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %24 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %25, align 8
  %26 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %27 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %31 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %35 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 8, i32* %37, align 4
  %38 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %39 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 0, i32* %41, align 8
  %42 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %43 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  store i32 18, i32* %45, align 4
  %46 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %47 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 4
  store i32 2, i32* %49, align 8
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_6__*) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
