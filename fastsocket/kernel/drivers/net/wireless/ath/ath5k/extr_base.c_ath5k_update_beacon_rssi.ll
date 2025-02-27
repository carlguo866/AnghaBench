; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_update_beacon_rssi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_update_beacon_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_mgmt = type { i32, i32 }
%struct.ath_common = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, %struct.sk_buff*, i32)* @ath5k_update_beacon_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_update_beacon_rssi(%struct.ath5k_hw* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_mgmt*, align 8
  %8 = alloca %struct.ath_common*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %12, %struct.ieee80211_mgmt** %7, align 8
  %13 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %14 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %8, align 8
  %15 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ieee80211_is_beacon(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %25 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ether_addr_equal(i32 %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20, %3
  br label %35

30:                                               ; preds = %20
  %31 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %32 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ewma_add(i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %29
  ret void
}

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

declare dso_local i32 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @ewma_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
