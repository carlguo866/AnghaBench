; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_choose_set_bssid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_choose_set_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32, i32 }

@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@ath9k_htc_bss_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*)* @ath9k_htc_choose_set_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_choose_set_bssid(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca %struct.ath9k_htc_priv*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %2, align 8
  %3 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %4 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %9 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %12 = load i32, i32* @ath9k_htc_bss_iter, align 4
  %13 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %14 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %10, i32 %11, i32 %12, %struct.ath9k_htc_priv* %13)
  %15 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %16 = call i32 @ath9k_htc_set_bssid(%struct.ath9k_htc_priv* %15)
  br label %17

17:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_set_bssid(%struct.ath9k_htc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
